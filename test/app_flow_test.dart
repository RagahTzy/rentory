import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentory/core/auth/auth_state.dart';
import 'package:rentory/core/constants/app_constants.dart';
import 'package:rentory/core/routing/app_router.dart';
import 'package:rentory/data/services/api_client.dart';
import 'package:rentory/data/services/token_storage.dart';
import 'package:rentory/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/fake_dummyjson.dart';
import 'helpers/real_fonts.dart';

String _currentPath(GoRouter router) => router.routerDelegate.currentConfiguration.uri.path;

Future<(ProviderContainer, GoRouter)> _startApp(WidgetTester tester, {Size? physicalSize}) async {
  if (physicalSize != null) {
    tester.view.physicalSize = physicalSize;
    tester.view.devicePixelRatio = 3.0;
    addTearDown(tester.view.reset);
  }
  final container = ProviderContainer();
  addTearDown(container.dispose);
  await tester.pumpWidget(UncontrolledProviderScope(container: container, child: const RentoryApp()));
  // Splash 3 detik + cek token di SharedPreferences.
  await tester.pump(const Duration(seconds: 3));
  await tester.pumpAndSettle();
  return (container, container.read(routerProvider));
}

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await loadRealFonts();
    await initializeDateFormatting('id_ID', null);
  });

  setUp(() {
    SharedPreferences.setMockInitialValues({});
    ApiClient.client = fakeDummyJson();
  });

  testWidgets('belum login: splash -> login -> isi email admin -> admin dashboard', (tester) async {
    final (container, router) = await _startApp(tester);
    expect(_currentPath(router), '/auth/login');

    await tester.enterText(find.byType(TextFormField).at(0), 'emily.johnson@x.dummyjson.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'emilyspass');
    await tester.tap(find.widgetWithText(FilledButton, 'Masuk'));
    await tester.pumpAndSettle();

    // Router TIDAK dibuat ulang (dulu dibuat ulang & kembali ke /splash).
    expect(identical(container.read(routerProvider), router), isTrue);
    expect(_currentPath(router), '/admin/dashboard');
    expect(await tester.runAsync(TokenStorage.getAccessToken), isNotNull);
  });

  testWidgets('login gagal menampilkan pesan & tetap di halaman login', (tester) async {
    final (_, router) = await _startApp(tester);
    await tester.enterText(find.byType(TextFormField).at(0), 'emily.johnson@x.dummyjson.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'salah');
    await tester.tap(find.widgetWithText(FilledButton, 'Masuk'));
    await tester.pumpAndSettle();

    expect(find.text('Email atau password salah'), findsOneWidget);
    expect(_currentPath(router), '/auth/login');
  });

  testWidgets('token tersimpan & masih berlaku: buka app langsung masuk tanpa login', (tester) async {
    SharedPreferences.setMockInitialValues({AppConstants.keyAuthToken: fakeJwt(6)});
    final (container, router) = await _startApp(tester);

    final auth = container.read(authStateProvider);
    expect(auth, isA<Authenticated>());
    expect((auth as Authenticated).user.vendorId, 'vnd_001'); // oliviaw pemilik toko
    expect(_currentPath(router), '/vendor/dashboard');
  });

  // Ukuran layar: default test (800x600) dan HP kecil (360x740 logical px).
  const screenSizes = {'default 800x600': null, 'HP 360x740': Size(1080, 2220)};

  for (final MapEntry(key: label, value: physicalSize) in screenSizes.entries) {
    testWidgets('penyewa: katalog API di home, detail, search & booking tanpa error/overflow [$label]', (tester) async {
      final (container, router) = await _startApp(tester, physicalSize: physicalSize);
      await container.read(authStateProvider.notifier).login('avery.perez@x.dummyjson.com', 'averyppass');
      await tester.pumpAndSettle();
      expect(_currentPath(router), '/home');

      // Hanya kategori sewa; groceries ("Apple") & stok habis tidak tampil.
      expect(find.text('iPhone 5s'), findsOneWidget);
      expect(find.text('Apple'), findsNothing);
      expect(find.text('Apple AirPods Max Silver'), findsNothing);
      expect(find.text('Rp 32.000/hari'), findsOneWidget); // 199.99 USD x 16.000 x 1%

      for (final path in ['/product/121', '/product/167', '/search', '/booking/create/121']) {
        router.go(path);
        await tester.pumpAndSettle();
        expect(_currentPath(router), path);
        expect(tester.takeException(), isNull, reason: 'error saat membuka $path');
      }

      router.go('/product/167');
      await tester.pumpAndSettle();
      expect(find.textContaining('SIM A'), findsOneWidget); // aturan khusus kategori mobil
    });
  }
}
