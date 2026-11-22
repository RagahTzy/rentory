import 'package:flutter/widgets.dart' show Size;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:rentory/core/auth/auth_state.dart';
import 'package:rentory/core/routing/app_router.dart';
import 'package:rentory/data/services/auth_service.dart';
import 'package:rentory/data/services/product_service.dart';
import 'package:rentory/main.dart';

import 'helpers/real_fonts.dart';

String _currentPath(GoRouter router) => router.routerDelegate.currentConfiguration.uri.path;

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await loadRealFonts();
    await initializeDateFormatting('id_ID', null);
    await AuthService.init();
    await ProductService.init();
  });

  testWidgets('splash -> login -> login admin tidak ter-reset ke splash', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await tester.pumpWidget(UncontrolledProviderScope(container: container, child: const RentoryApp()));
    final router = container.read(routerProvider);
    expect(_currentPath(router), '/splash');

    // Splash menunggu 3 detik lalu pindah ke login.
    await tester.pump(const Duration(seconds: 3));
    await tester.pump(const Duration(milliseconds: 500));
    expect(_currentPath(router), '/auth/login');
    expect(find.text('Masuk'), findsWidgets);

    // Login sebagai admin (sama seperti yang dilakukan LoginScreen).
    final admin = (await AuthService.login('admin@rentory.com', 'admin123'))!;
    container.read(authStateProvider.notifier).setUser(admin);
    router.go(homePathFor(admin));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    // Router TIDAK dibuat ulang (dulu dibuat ulang & kembali ke /splash).
    expect(identical(container.read(routerProvider), router), isTrue);
    expect(_currentPath(router), '/admin/dashboard');
  });

  // Ukuran layar: default test (800x600) dan HP kecil (360x740 logical px).
  const screenSizes = {'default 800x600': null, 'HP 360x740': Size(1080, 2220)};

  for (final MapEntry(key: label, value: physicalSize) in screenSizes.entries) {
    testWidgets('penyewa: home, detail produk & search tampil tanpa error/overflow [$label]', (tester) async {
      if (physicalSize != null) {
        tester.view.physicalSize = physicalSize;
        tester.view.devicePixelRatio = 3.0;
        addTearDown(tester.view.reset);
      }

      final container = ProviderContainer();
      addTearDown(container.dispose);
      await tester.pumpWidget(UncontrolledProviderScope(container: container, child: const RentoryApp()));
      await tester.pump(const Duration(seconds: 3));
      await tester.pump(const Duration(milliseconds: 500));

      final router = container.read(routerProvider);
      final penyewa = (await AuthService.login('andi@sewa.com', 'andi123'))!;
      container.read(authStateProvider.notifier).setUser(penyewa);

      for (final path in ['/home', '/product/prd_001', '/search']) {
        router.go(path);
        await tester.pump();
        await tester.pump(const Duration(milliseconds: 500));
        expect(_currentPath(router), path);
        expect(tester.takeException(), isNull, reason: 'error saat membuka $path');
      }
    });
  }
}
