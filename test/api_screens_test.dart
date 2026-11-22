// Smoke test layar Profil & CRUD Produk (API di-mock) di HP 360x740.
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:rentory/core/auth/auth_state.dart';
import 'package:rentory/core/constants/app_constants.dart';
import 'package:rentory/core/routing/app_router.dart';
import 'package:rentory/data/models/api_models.dart';
import 'package:rentory/data/services/api_client.dart';
import 'package:rentory/data/services/auth_service.dart';
import 'package:rentory/data/services/token_storage.dart';
import 'package:rentory/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/real_fonts.dart';

http.Response _json(Object body, [int status = 200]) =>
    http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json'});

void main() {
  const profile = ApiUser(
    id: 6,
    username: 'oliviaw',
    firstName: 'Olivia',
    lastName: 'Wilson',
    email: 'olivia.wilson@x.dummyjson.com',
    phone: '+91 607-295-6448',
    gender: 'female',
    age: 22,
    birthDate: '2002-4-20',
    role: 'moderator',
    address: ApiAddress(address: '547 First Street', city: 'Fort Worth', country: 'United States'),
    company: ApiCompany(name: 'Pagac and Sons', title: 'Web Developer'),
  );

  setUpAll(loadRealFonts);

  Future<(ProviderContainer, dynamic)> pumpApp(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 2220);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(tester.view.reset);

    final container = ProviderContainer();
    addTearDown(container.dispose);
    await tester.pumpWidget(UncontrolledProviderScope(container: container, child: const RentoryApp()));
    await tester.pump(const Duration(seconds: 3));
    await tester.pump(const Duration(milliseconds: 500));
    // Simulasikan login berhasil (token disimpan setelah splash selesai mengecek sesi).
    await tester.runAsync(() => TokenStorage.saveTokens(accessToken: 'tok', refreshToken: 'rt'));
    container.read(authStateProvider.notifier).setUser(AuthService.userFromApi(profile), profile: profile);
    return (container, container.read(routerProvider));
  }

  testWidgets('Profil menampilkan data API & logout menghapus token', (tester) async {
    SharedPreferences.setMockInitialValues({});
    ApiClient.client = MockClient((_) async => _json({'message': 'invalid token'}, 500));
    final (container, router) = await pumpApp(tester);
    expect((await tester.runAsync(TokenStorage.getAccessToken)), 'tok');

    router.go('/profile');
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.text('Olivia Wilson'), findsOneWidget);
    expect(find.text('@oliviaw'), findsOneWidget);
    expect(find.text('Pengusaha'), findsOneWidget);
    expect(find.text('olivia.wilson@x.dummyjson.com'), findsOneWidget);
    // Data toko (dari vendor_mock) ikut tampil untuk akun pengusaha.
    await tester.scrollUntilVisible(find.text('Sewa Kamera Jaya'), 200);
    expect(find.text('Sewa Kamera Jaya'), findsOneWidget);
    await tester.scrollUntilVisible(find.textContaining('a.n. Olivia Wilson'), 200);
    expect(find.text('BCA 1234567890 a.n. Olivia Wilson'), findsOneWidget);

    await tester.scrollUntilVisible(find.text('Keluar'), 200);
    await tester.tap(find.text('Keluar'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Keluar'));
    await tester.pumpAndSettle();

    expect(container.read(authStateProvider), isA<Unauthenticated>());
    expect(router.routerDelegate.currentConfiguration.uri.path, '/auth/login');
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString(AppConstants.keyAuthToken), isNull);
  });

  testWidgets('Layar CRUD: GET list, POST tambah, DELETE hapus', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final methods = <String>[];
    ApiClient.client = MockClient((r) async {
      methods.add('${r.method} ${r.url.path}');
      return switch (r.method) {
        'GET' => _json({
            'products': [
              {'id': 1, 'title': 'Essence Mascara Lash Princess', 'price': 9.99, 'stock': 99, 'category': 'beauty'},
            ],
            'total': 1,
            'skip': 0,
            'limit': 20,
          }),
        'POST' => _json({'id': 195, ...jsonDecode(r.body)}, 201),
        'DELETE' => _json({'id': 1, 'isDeleted': true}),
        _ => _json({}, 404),
      };
    });
    final (_, router) = await pumpApp(tester);

    router.go('/api-products');
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.text('Essence Mascara Lash Princess'), findsOneWidget);

    // CREATE
    await tester.tap(find.text('Tambah'));
    await tester.pumpAndSettle();
    final fields = find.byType(TextFormField);
    await tester.enterText(fields.at(0), 'Tenda Dome 4 Orang');
    await tester.enterText(fields.at(1), 'Tenda camping kapasitas 4 orang');
    await tester.enterText(fields.at(2), '25.5');
    await tester.enterText(fields.at(3), '3');
    await tester.enterText(fields.at(4), 'outdoor');
    await tester.tap(find.text('Tambah Produk (POST)'));
    await tester.pumpAndSettle();
    expect(find.text('Tenda Dome 4 Orang'), findsOneWidget);

    // DELETE produk pertama dari server
    await tester.tap(find.byType(PopupMenuButton<String>).last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Hapus').last);
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Hapus'));
    await tester.pumpAndSettle();
    expect(find.text('Essence Mascara Lash Princess'), findsNothing);

    expect(methods, ['GET /auth/products', 'POST /auth/products/add', 'DELETE /auth/products/1']);
    expect(tester.takeException(), isNull);
  });
}
