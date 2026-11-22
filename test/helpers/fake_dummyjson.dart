// Server DummyJSON palsu (MockClient) untuk test — tanpa internet.
// Bentuk response mengikuti API asli https://dummyjson.com.
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

/// JWT palsu dengan klaim `exp` (signature tidak dicek di client).
String fakeJwt(int userId, {Duration validFor = const Duration(hours: 1)}) {
  String enc(Object o) => base64Url.encode(utf8.encode(jsonEncode(o))).replaceAll('=', '');
  final exp = DateTime.now().add(validFor).millisecondsSinceEpoch ~/ 1000;
  return '${enc({'alg': 'HS256'})}.${enc({'id': userId, 'exp': exp})}.sig';
}

http.Response jsonResponse(Object body, [int status = 200]) =>
    http.Response(jsonEncode(body), status, headers: {'content-type': 'application/json'});

/// User DummyJSON (subset field /auth/me).
const fakeUsers = <Map<String, dynamic>>[
  {
    'id': 1, 'username': 'emilys', 'password': 'emilyspass', 'role': 'admin',
    'firstName': 'Emily', 'lastName': 'Johnson', 'email': 'emily.johnson@x.dummyjson.com',
    'phone': '+81 965-431-3024', 'gender': 'female', 'age': 29, 'birthDate': '1996-5-30',
    'address': {'address': '626 Main Street', 'city': 'Phoenix', 'country': 'United States'},
    'company': {'name': 'Dooley, Kozey and Cronin', 'title': 'Sales Manager'},
  },
  {
    'id': 6, 'username': 'oliviaw', 'password': 'oliviawpass', 'role': 'moderator',
    'firstName': 'Olivia', 'lastName': 'Wilson', 'email': 'olivia.wilson@x.dummyjson.com',
    'phone': '+91 607-295-6448', 'gender': 'female', 'age': 22, 'birthDate': '2002-4-20',
  },
  {
    'id': 16, 'username': 'averyp', 'password': 'averyppass', 'role': 'user',
    'firstName': 'Avery', 'lastName': 'Perez', 'email': 'avery.perez@x.dummyjson.com',
    'phone': '+61 731-431-3457', 'gender': 'female', 'age': 25,
  },
];

/// Produk DummyJSON: 3 kategori sewa + 1 groceries (harus tersaring keluar).
/// Foto dikosongkan agar test tidak mengunduh gambar.
const fakeProducts = <Map<String, dynamic>>[
  {
    'id': 121, 'title': 'iPhone 5s', 'description': 'Smartphone klasik Apple.', 'price': 199.99,
    'stock': 25, 'category': 'smartphones', 'brand': 'Apple', 'rating': 4.5,
    'availabilityStatus': 'In Stock', 'images': <String>[], 'reviews': [{}, {}, {}],
  },
  {
    'id': 167, 'title': '300 Touring', 'description': 'Sedan nyaman untuk perjalanan jauh.',
    'price': 28999.99, 'stock': 3, 'category': 'vehicle', 'brand': 'Chrysler', 'rating': 4.2,
    'availabilityStatus': 'Low Stock', 'images': <String>[], 'reviews': [{}],
  },
  {
    'id': 101, 'title': 'Apple AirPods Max Silver', 'description': 'Headphone premium.',
    'price': 549.99, 'stock': 0, 'category': 'mobile-accessories', 'rating': 3.9,
    'availabilityStatus': 'Out of Stock', 'images': <String>[], 'reviews': <Map>[],
  },
  {
    'id': 16, 'title': 'Apple', 'description': 'Buah apel segar.', 'price': 1.99, 'stock': 9,
    'category': 'groceries', 'rating': 4.1, 'availabilityStatus': 'In Stock', 'images': <String>[],
  },
];

const fakeCategories = [
  {'slug': 'groceries', 'name': 'Groceries'},
  {'slug': 'mobile-accessories', 'name': 'Mobile Accessories'},
  {'slug': 'smartphones', 'name': 'Smartphones'},
  {'slug': 'vehicle', 'name': 'Vehicle'},
];

/// MockClient yang meniru endpoint DummyJSON yang dipakai aplikasi.
/// [log] menerima "METHOD path" setiap request.
MockClient fakeDummyJson({List<String>? log}) {
  return MockClient((r) async {
    log?.add('${r.method} ${r.url.path}');
    final path = r.url.path;
    final auth = r.headers['Authorization'];

    Map<String, dynamic>? userFromToken() {
      if (auth == null || !auth.startsWith('Bearer ')) return null;
      try {
        final payload = jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(auth.substring(7).split('.')[1]))));
        return fakeUsers.firstWhere((u) => u['id'] == payload['id']);
      } catch (_) {
        return null;
      }
    }

    if (path == '/users/filter') {
      final v = r.url.queryParameters['value'];
      return jsonResponse({
        'users': [
          for (final u in fakeUsers)
            if (u['email'] == v) {'id': u['id'], 'username': u['username'], 'email': u['email']},
        ],
      });
    }
    if (path == '/auth/login') {
      final body = jsonDecode(r.body);
      for (final u in fakeUsers) {
        if (u['username'] == body['username'] && u['password'] == body['password']) {
          return jsonResponse({
            'id': u['id'], 'username': u['username'], 'email': u['email'],
            'accessToken': fakeJwt(u['id'] as int), 'refreshToken': 'refresh-${u['id']}',
          });
        }
      }
      return jsonResponse({'message': 'Invalid credentials'}, 400);
    }

    // Semua endpoint /auth/* lainnya wajib token.
    if (path.startsWith('/auth/')) {
      final me = userFromToken();
      if (me == null) return jsonResponse({'message': 'Access Token is required'}, 401);
      if (path == '/auth/me') return jsonResponse(me);
      if (path == '/auth/products/categories') return jsonResponse(fakeCategories);
      if (path == '/auth/products') {
        return jsonResponse({'products': fakeProducts, 'total': fakeProducts.length, 'skip': 0, 'limit': 0});
      }
      final m = RegExp(r'^/auth/products/(\d+)$').firstMatch(path);
      if (m != null) {
        final id = int.parse(m.group(1)!);
        for (final p in fakeProducts) {
          if (p['id'] == id) return jsonResponse(p);
        }
        return jsonResponse({'message': "Product with id '$id' not found"}, 404);
      }
    }
    return jsonResponse({'message': 'not found'}, 404);
  });
}
