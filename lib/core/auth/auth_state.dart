// lib/core/auth/auth_state.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import '../../data/models/user.dart';
import '../constants/app_constants.dart';

/// Halaman awal sesuai role user. Dipakai oleh guard router DAN layar
/// login/register, supaya aturan "role → halaman" hanya ada di satu tempat.
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
  const Authenticated(this.user);
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

  void setUser(User user) => state = Authenticated(user);
  void logout() => state = const Unauthenticated();
  void setError(String msg) => state = AuthError(msg);
  void setLoading() => state = const Loading();
}

final authStateProvider = NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);
