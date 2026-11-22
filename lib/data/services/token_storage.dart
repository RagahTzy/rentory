// lib/data/services/token_storage.dart
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/app_constants.dart';

/// Penyimpanan token & sesi login secara lokal memakai SharedPreferences.
class TokenStorage {
  static const String _keyRefreshToken = 'refresh_token';
  static const String _keyCachedProfile = 'cached_profile';

  /// Simpan token setelah login / refresh berhasil.
  static Future<void> saveTokens({required String accessToken, String? refreshToken}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConstants.keyAuthToken, accessToken);
    if (refreshToken != null) {
      await prefs.setString(_keyRefreshToken, refreshToken);
    }
  }

  /// Ambil access token setiap kali request butuh autentikasi.
  static Future<String?> getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(AppConstants.keyAuthToken);
  }

  static Future<String?> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyRefreshToken);
  }

  /// Cache profil (JSON dari /auth/me) agar sesi tetap bisa dipulihkan saat offline.
  static Future<void> saveProfile(Map<String, dynamic> json) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyCachedProfile, jsonEncode(json));
  }

  static Future<Map<String, dynamic>?> getCachedProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_keyCachedProfile);
    if (raw == null) return null;
    try {
      return jsonDecode(raw) as Map<String, dynamic>;
    } catch (_) {
      return null;
    }
  }

  /// Hapus semua data sesi (dipanggil saat logout / token tidak valid).
  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(AppConstants.keyAuthToken);
    await prefs.remove(_keyRefreshToken);
    await prefs.remove(_keyCachedProfile);
    await prefs.remove(AppConstants.keyUserId);
    await prefs.remove(AppConstants.keyUserRole);
  }

  /// Cek masa berlaku JWT dari klaim `exp` tanpa request ke server.
  /// Mengembalikan true jika token tidak bisa dibaca atau sudah kedaluwarsa.
  static bool isJwtExpired(String token, {Duration leeway = const Duration(seconds: 30)}) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) return true;
      final payload = jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
      final exp = payload['exp'];
      if (exp is! num) return true;
      final expiry = DateTime.fromMillisecondsSinceEpoch(exp.toInt() * 1000);
      return DateTime.now().add(leeway).isAfter(expiry);
    } catch (_) {
      return true;
    }
  }
}
