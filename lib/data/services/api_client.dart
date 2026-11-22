// lib/data/services/api_client.dart
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/constants/api_constants.dart';
import 'token_storage.dart';

/// Error dari API, dengan pesan yang siap ditampilkan ke pengguna.
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  const ApiException(this.message, {this.statusCode});

  bool get isUnauthorized => statusCode == 401 || statusCode == 403;
  bool get isNotFound => statusCode == 404;

  @override
  String toString() => message;
}

/// Pembungkus `package:http`: membangun request, menyisipkan Bearer token
/// dari SharedPreferences, mendekode response JSON, dan memetakan error.
class ApiClient {
  static http.Client _client = http.Client();

  /// Untuk test: ganti client dengan `MockClient`.
  static set client(http.Client c) => _client = c;

  static Future<dynamic> get(String path, {Map<String, String>? query, bool auth = true}) =>
      _send('GET', path, query: query, auth: auth);

  static Future<dynamic> post(String path, {Object? body, bool auth = true}) =>
      _send('POST', path, body: body, auth: auth);

  static Future<dynamic> put(String path, {Object? body, bool auth = true}) =>
      _send('PUT', path, body: body, auth: auth);

  static Future<dynamic> delete(String path, {bool auth = true}) => _send('DELETE', path, auth: auth);

  static Future<dynamic> _send(
    String method,
    String path, {
    Map<String, String>? query,
    Object? body,
    bool auth = true,
    bool retried = false,
  }) async {
    final uri = Uri.parse('${ApiConstants.baseUrl}$path').replace(queryParameters: query);
    final headers = <String, String>{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    if (auth) {
      final token = await TokenStorage.getAccessToken();
      if (token == null) {
        throw const ApiException('Sesi berakhir, silakan login kembali', statusCode: 401);
      }
      headers['Authorization'] = 'Bearer $token';
    }

    final request = http.Request(method, uri)..headers.addAll(headers);
    if (body != null) request.body = jsonEncode(body);

    final http.Response response;
    try {
      final streamed = await _client.send(request).timeout(ApiConstants.timeout);
      response = await http.Response.fromStream(streamed);
    } on TimeoutException {
      throw const ApiException('Koneksi timeout, periksa jaringan Anda');
    } on http.ClientException {
      // http 1.x membungkus SocketException (offline / DNS gagal) menjadi ClientException.
      throw const ApiException('Tidak dapat terhubung ke server, periksa koneksi internet Anda');
    }

    // Token kedaluwarsa → coba perbarui sekali dengan refresh token, lalu ulangi.
    if (auth && response.statusCode == 401 && !retried && await refreshAccessToken()) {
      return _send(method, path, query: query, body: body, auth: auth, retried: true);
    }

    return _decode(response);
  }

  static dynamic _decode(http.Response response) {
    dynamic data;
    if (response.body.isNotEmpty) {
      try {
        data = jsonDecode(utf8.decode(response.bodyBytes));
      } on FormatException {
        data = null;
      }
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (data == null) throw ApiException('Response tidak valid', statusCode: response.statusCode);
      return data;
    }

    final serverMessage = data is Map && data['message'] is String ? data['message'] as String : null;
    throw ApiException(
      serverMessage ?? 'Request gagal (HTTP ${response.statusCode})',
      statusCode: response.statusCode,
    );
  }

  /// POST /auth/refresh. Mengembalikan true jika token baru berhasil disimpan.
  static Future<bool> refreshAccessToken() async {
    final refreshToken = await TokenStorage.getRefreshToken();
    if (refreshToken == null) return false;
    try {
      final data = await post(
        ApiConstants.refresh,
        auth: false,
        body: {'refreshToken': refreshToken, 'expiresInMins': ApiConstants.tokenExpiresInMins},
      );
      final access = data['accessToken'] as String?;
      if (access == null) return false;
      await TokenStorage.saveTokens(accessToken: access, refreshToken: data['refreshToken'] as String?);
      return true;
    } on ApiException {
      return false;
    }
  }
}
