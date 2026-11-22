// lib/data/services/auth_service.dart
//
// Autentikasi 100% dari DummyJSON (https://dummyjson.com/docs/auth).
// Tidak ada data user lokal: identitas & role berasal dari API, satu-satunya
// tambahan adalah kepemilikan toko (vendor_mock.dart) untuk role pengusaha.
import '../../core/constants/api_constants.dart';
import '../../core/constants/app_constants.dart';
import '../mock/vendor_mock.dart';
import '../models/api_models.dart';
import '../models/user.dart';
import 'api_client.dart';
import 'token_storage.dart';

/// Hasil sesi login DummyJSON: profil dari API + User internal aplikasi.
class AuthSession {
  final ApiUser profile;
  final User user;
  const AuthSession(this.profile, this.user);
}

class AuthService {
  /// Login dengan EMAIL + password.
  ///
  /// 1. GET /users/filter?key=email → cari username pemilik email
  ///    (endpoint /auth/login DummyJSON hanya menerima username).
  /// 2. POST /auth/login {username, password} → simpan access & refresh token
  ///    ke SharedPreferences.
  /// 3. GET /auth/me memakai token tersebut → profil lengkap.
  static Future<AuthSession> loginWithApi(String email, String password) async {
    final username = await findUsernameByEmail(email);
    if (username == null) {
      // Status 400 = sama seperti kredensial salah (tidak membocorkan email terdaftar/tidak).
      throw const ApiException('Email atau password salah', statusCode: 400);
    }

    final json = await ApiClient.post(
      ApiConstants.login,
      auth: false,
      body: {
        'username': username,
        'password': password,
        'expiresInMins': ApiConstants.tokenExpiresInMins,
      },
    );
    final login = LoginResponse.fromJson(json as Map<String, dynamic>);
    await TokenStorage.saveTokens(accessToken: login.accessToken, refreshToken: login.refreshToken);

    try {
      return await fetchCurrentUser();
    } catch (_) {
      // Jangan tinggalkan token "setengah jadi" kalau profil gagal diambil.
      await TokenStorage.clear();
      rethrow;
    }
  }

  /// `GET /users/filter?key=email&value=EMAIL&select=username,email`
  static Future<String?> findUsernameByEmail(String email) async {
    final target = email.trim().toLowerCase();
    final json = await ApiClient.get(
      ApiConstants.userFilter,
      auth: false,
      query: {'key': 'email', 'value': target, 'select': 'username,email'},
    );
    final users = (json as Map<String, dynamic>)['users'] as List<dynamic>? ?? const [];
    for (final u in users) {
      if (u is Map && (u['email'] as String?)?.toLowerCase() == target) {
        return u['username'] as String?;
      }
    }
    return null;
  }

  /// GET /auth/me (endpoint yang membutuhkan Bearer token).
  static Future<AuthSession> fetchCurrentUser() async {
    final json = await ApiClient.get(ApiConstants.me) as Map<String, dynamic>;
    await TokenStorage.saveProfile(json);
    return _sessionFromJson(json);
  }

  /// Dipanggil saat aplikasi dibuka: pulihkan sesi dari token tersimpan.
  /// Mengembalikan null jika belum login / token sudah tidak berlaku.
  static Future<AuthSession?> restoreSession() async {
    final token = await TokenStorage.getAccessToken();
    if (token == null) return null;

    // Token kedaluwarsa → coba perbarui dengan refresh token terlebih dulu.
    if (TokenStorage.isJwtExpired(token) && !await ApiClient.refreshAccessToken()) {
      await TokenStorage.clear();
      return null;
    }

    try {
      return await fetchCurrentUser();
    } on ApiException catch (e) {
      if (e.statusCode != null) {
        // Server menolak token (401/500 "invalid token") → sesi dianggap berakhir.
        await TokenStorage.clear();
        return null;
      }
      // Gagal jaringan, tapi token masih berlaku → pakai profil yang di-cache.
      final cached = await TokenStorage.getCachedProfile();
      return cached == null ? null : _sessionFromJson(cached);
    }
  }

  /// Logout: hapus token & data sesi dari SharedPreferences.
  static Future<void> logout() => TokenStorage.clear();

  static AuthSession _sessionFromJson(Map<String, dynamic> json) {
    final profile = ApiUser.fromJson(json);
    return AuthSession(profile, userFromApi(profile));
  }

  /// Bentuk User aplikasi dari profil DummyJSON.
  ///
  /// Role: `admin` di DummyJSON → admin; pemilik toko (vendor_mock) →
  /// pengusaha dengan status mengikuti verifikasi toko; selain itu → penyewa.
  static User userFromApi(ApiUser p) {
    final id = '${p.id}';
    final vendor = p.role == 'admin' ? null : getVendorByUserId(id);

    final String role;
    final String status;
    if (p.role == 'admin') {
      role = AppConstants.roleAdmin;
      status = AppConstants.statusAktif;
    } else if (vendor != null) {
      role = AppConstants.rolePengusaha;
      status = vendor.statusVerifikasi == AppConstants.statusMenunggu ? 'menunggu_verifikasi' : vendor.statusVerifikasi;
    } else {
      role = AppConstants.rolePenyewa;
      status = AppConstants.statusAktif;
    }

    return User(
      id: id,
      email: p.email,
      nama: p.fullName.isEmpty ? p.username : p.fullName,
      noHp: p.phone,
      role: role,
      isVerified: status == AppConstants.statusAktif,
      status: status,
      alamat: p.address?.formatted,
      vendorId: vendor?.id,
    );
  }
}
