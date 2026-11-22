// lib/core/constants/api_constants.dart

/// Konfigurasi endpoint DummyJSON (https://dummyjson.com/docs).
class ApiConstants {
  static const String baseUrl = 'https://dummyjson.com';

  // Authentication
  static const String login = '/auth/login'; // POST {username, password, expiresInMins}
  static const String me = '/auth/me'; // GET  (butuh Bearer token)
  static const String refresh = '/auth/refresh'; // POST {refreshToken, expiresInMins}

  /// GET /users/filter?key=email&value=... — /auth/login DummyJSON hanya
  /// menerima username, jadi email dicari dulu username-nya di sini.
  static const String userFilter = '/users/filter';

  // Produk — prefix /auth membuat endpoint WAJIB memakai Bearer token.
  static const String products = '/auth/products'; // GET list, GET /{id}, PUT /{id}, DELETE /{id}
  static const String addProduct = '/auth/products/add'; // POST
  static const String productCategories = '/auth/products/categories'; // GET

  /// Masa berlaku access token yang diminta ke server (menit).
  static const int tokenExpiresInMins = 60;

  static const Duration timeout = Duration(seconds: 15);
}
