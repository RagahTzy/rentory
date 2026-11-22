// lib/core/auth/auth_state.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import '../../data/models/api_models.dart';
import '../../data/models/user.dart';
import '../../data/services/auth_service.dart';
import '../../data/services/product_service.dart';
import '../constants/app_constants.dart';

/// Halaman awal sesuai role user. Dipakai oleh guard router DAN layar
/// login & splash, supaya aturan "role → halaman" hanya ada di satu tempat.
String homePathFor(User user) {
  if (user.role == AppConstants.roleAdmin) return '/admin/dashboard';
  if (user.role == AppConstants.rolePengusaha) {
    return user.status == AppConstants.statusAktif ? '/vendor/dashboard' : '/vendor/pending';
  }
  return '/home';
}

@immutable
sealed class AuthState {
  const AuthState();
}

class Initial extends AuthState {
  const Initial();
}

class Loading extends AuthState {
  const Loading();
}

class Authenticated extends AuthState {
  final User user;

  /// Profil lengkap dari DummyJSON (/auth/me). Null untuk akun lokal (users.json).
  final ApiUser? profile;
  const Authenticated(this.user, {this.profile});
}

class Unauthenticated extends AuthState {
  const Unauthenticated();
}

class AuthError extends AuthState {
  final String message;
  const AuthError(this.message);
}

/// Riverpod 3: `StateNotifier` sudah dipindah ke API legacy,
/// jadi dipakai `Notifier` (API modern) dengan method publik yang sama.
class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() => const Initial();

  void setUser(User user, {ApiUser? profile}) => state = Authenticated(user, profile: profile);

  /// Login ke DummyJSON dengan email. Token disimpan ke SharedPreferences oleh AuthService.
  Future<User> login(String email, String password) async {
    final session = await AuthService.loginWithApi(email, password);
    state = Authenticated(session.user, profile: session.profile);
    return session.user;
  }

  /// Dipanggil splash screen: pulihkan sesi dari token tersimpan agar user
  /// tidak perlu login ulang selama token masih berlaku.
  Future<User?> restoreSession() async {
    try {
      final session = await AuthService.restoreSession();
      if (session == null) {
        state = const Unauthenticated();
        return null;
      }
      state = Authenticated(session.user, profile: session.profile);
      return session.user;
    } catch (_) {
      state = const Unauthenticated();
      return null;
    }
  }

  /// Ambil ulang profil dari /auth/me (pull-to-refresh di halaman Profil).
  Future<void> refreshProfile() async {
    final session = await AuthService.fetchCurrentUser();
    state = Authenticated(session.user, profile: session.profile);
  }

  /// Logout: hapus token dari SharedPreferences, lalu akhiri sesi.
  Future<void> logout() async {
    try {
      await AuthService.logout();
    } finally {
      ref.invalidate(catalogProvider); // katalog dimuat ulang dengan token user berikutnya
      state = const Unauthenticated();
    }
  }

  void setError(String msg) => state = AuthError(msg);
  void setLoading() => state = const Loading();
}

final authStateProvider = NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);
