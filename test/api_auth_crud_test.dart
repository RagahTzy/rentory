// Test alur autentikasi DummyJSON, penyimpanan token (SharedPreferences),
// dan CRUD produk — memakai MockClient, jadi tidak butuh internet.
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:rentory/core/auth/auth_state.dart';
import 'package:rentory/core/constants/app_constants.dart';
import 'package:rentory/data/models/api_models.dart';
import 'package:rentory/data/models/product.dart';
import 'package:rentory/data/services/api_client.dart';
import 'package:rentory/data/services/auth_service.dart';
import 'package:rentory/data/services/product_service.dart';
import 'package:rentory/data/services/token_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/fake_dummyjson.dart';

/// JWT palsu dengan klaim `exp` tertentu (signature tidak dicek di client).
String _jwt(Duration validFor) {
  String enc(Object o) => base64Url.encode(utf8.encode(jsonEncode(o))).replaceAll('=', '');
  final exp = DateTime.now().add(validFor).millisecondsSinceEpoch ~/ 1000;
  return '${enc({'alg': 'HS256'})}.${enc({'id': 1, 'exp': exp})}.sig';
}

final _meJson = {
  'id': 1,
  'username': 'emilys',
  'firstName': 'Emily',
  'lastName': 'Johnson',
  'email': 'emily.johnson@x.dummyjson.com',
  'phone': '+81 965-431-3024',
  'gender': 'female',
  'age': 29,
  'birthDate': '1996-5-30',
  'image': 'https://dummyjson.com/icon/emilys/128',
  'role': 'admin',
  'address': {'address': '626 Main Street', 'city': 'Phoenix', 'country': 'United States'},
  'company': {'name': 'Dooley, Kozey and Cronin', 'title': 'Sales Manager'},
};

http.Response _json(Object body, [int status = 200]) =>
    http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json'});

void main() {
  late List<http.Request> requests;
  late String validToken;

  /// Pasang MockClient; [handler] menerima request & mengembalikan response.
  void mockServer(http.Response Function(http.Request r) handler) {
    ApiClient.client = MockClient((r) async {
      requests.add(r);
      return handler(r);
    });
  }

  setUp(() {
    SharedPreferences.setMockInitialValues({});
    requests = [];
    validToken = _jwt(const Duration(hours: 1));
  });

  group('Authentication', () {
    test('login email: cari username, POST username/password, simpan token, GET /auth/me pakai Bearer', () async {
      mockServer((r) {
        if (r.url.path == '/users/filter') {
          return r.url.queryParameters['value'] == 'emily.johnson@x.dummyjson.com'
              ? _json({
                  'users': [
                    {'id': 1, 'username': 'emilys', 'email': 'emily.johnson@x.dummyjson.com'},
                  ],
                })
              : _json({'users': []});
        }
        if (r.url.path == '/auth/login') {
          final body = jsonDecode(r.body);
          if (body['username'] == 'emilys' && body['password'] == 'emilyspass') {
            return _json({'id': 1, 'username': 'emilys', 'accessToken': validToken, 'refreshToken': 'rt-1'});
          }
          return _json({'message': 'Invalid credentials'}, 400);
        }
        if (r.url.path == '/auth/me') {
          return r.headers['Authorization'] == 'Bearer $validToken'
              ? _json(_meJson)
              : _json({'message': 'Invalid/Expired Token!'}, 401);
        }
        return _json({'message': 'not found'}, 404);
      });

      final session = await AuthService.loginWithApi('Emily.Johnson@x.dummyjson.com', 'emilyspass');

      expect(requests.map((r) => '${r.method} ${r.url.path}'),
          ['GET /users/filter', 'POST /auth/login', 'GET /auth/me']);
      expect(jsonDecode(requests[1].body)['username'], 'emilys');
      expect(requests[1].headers.containsKey('Authorization'), isFalse);
      expect(await TokenStorage.getAccessToken(), validToken);
      expect(await TokenStorage.getRefreshToken(), 'rt-1');
      expect(requests.last.headers['Authorization'], 'Bearer $validToken');

      expect(session.profile.fullName, 'Emily Johnson');
      expect(session.user.role, AppConstants.roleAdmin);
      expect(session.user.alamat, contains('Phoenix'));
    });

    test('email tidak terdaftar → ditolak tanpa memanggil /auth/login', () async {
      mockServer((_) => _json({'users': []}));
      await expectLater(
        AuthService.loginWithApi('tidakada@x.dummyjson.com', 'apa'),
        throwsA(isA<ApiException>().having((e) => e.statusCode, 'status', 400)),
      );
      expect(requests.map((r) => r.url.path), ['/users/filter']);
    });

    test('password salah → ApiException 400, token tidak tersimpan', () async {
      mockServer((r) => r.url.path == '/users/filter'
          ? _json({
              'users': [
                {'id': 1, 'username': 'emilys', 'email': 'emily.johnson@x.dummyjson.com'},
              ],
            })
          : _json({'message': 'Invalid credentials'}, 400));
      await expectLater(
        AuthService.loginWithApi('emily.johnson@x.dummyjson.com', 'salah'),
        throwsA(isA<ApiException>().having((e) => e.statusCode, 'status', 400)),
      );
      expect(await TokenStorage.getAccessToken(), isNull);
    });

    test('role dari API: admin DummyJSON → admin', () {
      final admin = AuthService.userFromApi(const ApiUser(id: 2, username: 'michaelw', role: 'admin'));
      expect(admin.id, '2'); // id user = id DummyJSON
      expect(admin.role, AppConstants.roleAdmin);
      expect(homePathFor(admin), '/admin/dashboard');
    });

    test('pemilik toko → pengusaha; status mengikuti verifikasi toko', () {
      final olivia = AuthService.userFromApi(
          const ApiUser(id: 6, username: 'oliviaw', firstName: 'Olivia', lastName: 'Wilson', role: 'moderator'));
      expect(olivia.nama, 'Olivia Wilson'); // identitas dari API
      expect(olivia.role, AppConstants.rolePengusaha);
      expect(olivia.vendorId, 'vnd_001'); // toko "Sewa Kamera Jaya" (rekening, lokasi, dst)
      expect(homePathFor(olivia), '/vendor/dashboard');

      final ava = AuthService.userFromApi(const ApiUser(id: 8, username: 'avat', role: 'moderator'));
      expect(ava.vendorId, 'vnd_003');
      expect(homePathFor(ava), '/vendor/pending'); // toko belum diverifikasi admin
    });

    test('bukan admin & tidak punya toko → penyewa', () {
      final avery = AuthService.userFromApi(const ApiUser(id: 16, username: 'averyp', role: 'user'));
      expect(avery.role, AppConstants.rolePenyewa);
      expect(homePathFor(avery), '/home');

      // Moderator tanpa toko tidak jadi pengusaha (tidak punya rekening/lokasi).
      final mod = AuthService.userFromApi(const ApiUser(id: 12, username: 'miar', role: 'moderator'));
      expect(mod.role, AppConstants.rolePenyewa);
      expect(mod.vendorId, isNull);
    });
  });

  group('SharedPreferences & sesi', () {
    test('belum ada token → restoreSession null tanpa request', () async {
      mockServer((_) => _json({}, 500));
      expect(await AuthService.restoreSession(), isNull);
      expect(requests, isEmpty);
    });

    test('token tersimpan & masih berlaku → sesi pulih tanpa login ulang', () async {
      SharedPreferences.setMockInitialValues({AppConstants.keyAuthToken: validToken});
      mockServer((r) => _json(_meJson));

      final session = await AuthService.restoreSession();
      expect(session?.profile.username, 'emilys');
      expect(requests.single.url.path, '/auth/me');
      expect(requests.single.headers['Authorization'], 'Bearer $validToken');
    });

    test('token kedaluwarsa → diperbarui dengan refresh token', () async {
      final expired = _jwt(const Duration(hours: -1));
      SharedPreferences.setMockInitialValues({AppConstants.keyAuthToken: expired, 'refresh_token': 'rt-1'});
      mockServer((r) => r.url.path == '/auth/refresh'
          ? _json({'accessToken': validToken, 'refreshToken': 'rt-2'})
          : _json(_meJson));

      expect(await AuthService.restoreSession(), isNotNull);
      expect(await TokenStorage.getAccessToken(), validToken);
      expect(await TokenStorage.getRefreshToken(), 'rt-2');
    });

    test('token ditolak server → token dihapus, harus login lagi', () async {
      SharedPreferences.setMockInitialValues({AppConstants.keyAuthToken: validToken});
      mockServer((_) => _json({'message': 'Invalid/Expired Token!'}, 401));

      expect(await AuthService.restoreSession(), isNull);
      expect(await TokenStorage.getAccessToken(), isNull);
    });

    test('logout menghapus token dari SharedPreferences', () async {
      await TokenStorage.saveTokens(accessToken: validToken, refreshToken: 'rt');
      await TokenStorage.saveProfile(_meJson);
      await AuthService.logout();
      expect(await TokenStorage.getAccessToken(), isNull);
      expect(await TokenStorage.getRefreshToken(), isNull);
      expect(await TokenStorage.getCachedProfile(), isNull);
    });
  });

  group('Katalog sewa dari API', () {
    test('produk DummyJSON dilengkapi data sewa (toko, tarif Rp/hari, status)', () {
      final p = ProductService.toRentalProduct(const ApiProduct(
        id: 121, title: 'iPhone 5s', price: 199.99, stock: 25, category: 'smartphones',
        images: ['https://cdn.dummyjson.com/a.webp'], rating: 4.5, reviews: [{}, {}],
      ))!;
      expect(p.id, '121');
      expect(p.vendorId, 'vnd_001');
      expect(p.hargaPerHari, 32000); // 199.99 x 16.000 x 1%
      expect(p.hargaPerMinggu, 32000 * 6);
      expect(p.status, AppConstants.statusTersedia);
      expect(p.totalReview, 2);
      expect(p.foto.single, 'https://cdn.dummyjson.com/a.webp');
    });

    test('stok habis → disewa; kategori non-sewa (groceries) dibuang', () {
      final habis = ProductService.toRentalProduct(
          const ApiProduct(id: 101, title: 'AirPods', price: 549.99, stock: 0, category: 'mobile-accessories'))!;
      expect(habis.status, AppConstants.statusDisewa);
      expect(habis.isAvailable, isFalse);

      expect(ProductService.toRentalProduct(const ApiProduct(id: 16, title: 'Apple', category: 'groceries')), isNull);
    });

    test('fetchCatalog: GET /auth/products & /auth/products/categories pakai token', () async {
      SharedPreferences.setMockInitialValues({AppConstants.keyAuthToken: fakeJwt(16)});
      final log = <String>[];
      ApiClient.client = fakeDummyJson(log: log);

      final catalog = await ProductService.fetchCatalog();
      expect(log, containsAll(['GET /auth/products', 'GET /auth/products/categories']));
      expect(catalog.products.map((p) => p.nama), ['iPhone 5s', '300 Touring', 'Apple AirPods Max Silver']);
      expect(catalog.available.map((p) => p.id), ['121', '167']);
      expect(catalog.categories.map((c) => c.nama), ['Aksesoris Gadget', 'Smartphone', 'Mobil']);
    });
  });

  group('CRUD produk (/auth/products, butuh token)', () {
    setUp(() => SharedPreferences.setMockInitialValues({AppConstants.keyAuthToken: validToken}));

    test('GET daftar produk', () async {
      mockServer((_) => _json({
            'products': [
              {'id': 1, 'title': 'Mascara', 'price': 9.99, 'stock': 99, 'category': 'beauty'},
            ],
            'total': 194,
            'skip': 0,
            'limit': 20,
          }));
      final page = await ProductService.fetchApiProducts();
      expect(requests.single.method, 'GET');
      expect(requests.single.url.path, '/auth/products');
      expect(requests.single.headers['Authorization'], 'Bearer $validToken');
      expect(page.total, 194);
      expect(page.products.single.price, 9.99);
    });

    test('POST, PUT, DELETE mengirim method, path & body yang benar', () async {
      mockServer((r) => switch (r.method) {
            'POST' => _json({'id': 195, ...jsonDecode(r.body)}, 201),
            'PUT' => _json({'id': 1, 'title': jsonDecode(r.body)['title'], 'price': 9.99}),
            'DELETE' => _json({'id': 1, 'title': 'Mascara', 'isDeleted': true}),
            _ => _json({}, 405),
          });

      final created = await ProductService.createApiProduct({'title': 'Tenda', 'price': 25, 'stock': 3});
      expect(requests.last.url.path, '/auth/products/add');
      expect(created.id, 195);
      expect(created.title, 'Tenda');

      final updated = await ProductService.updateApiProduct(1, {'title': 'Mascara Baru'});
      expect(requests.last.method, 'PUT');
      expect(requests.last.url.path, '/auth/products/1');
      expect(updated.title, 'Mascara Baru');

      expect(await ProductService.deleteApiProduct(1), isTrue);
      expect(requests.last.method, 'DELETE');

      expect(requests.every((r) => r.headers['Authorization'] == 'Bearer $validToken'), isTrue);
    });

    test('tanpa token → ApiException 401 tanpa mengirim request', () async {
      SharedPreferences.setMockInitialValues({});
      mockServer((_) => _json({}));
      await expectLater(
        ProductService.fetchApiProducts(),
        throwsA(isA<ApiException>().having((e) => e.isUnauthorized, 'unauthorized', isTrue)),
      );
      expect(requests, isEmpty);
    });

    test('error server (404) diteruskan sebagai pesan yang terbaca', () async {
      mockServer((_) => _json({'message': "Product with id '999' not found"}, 404));
      await expectLater(
        ProductService.updateApiProduct(999, {'title': 'x'}),
        throwsA(isA<ApiException>().having((e) => e.message, 'message', contains('not found'))),
      );
    });
  });
}
