// lib/core/auth/auth_state.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import '../../data/models/user.dart';

@immutable
abstract class AuthState {
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

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const Initial());

  void setUser(User user) => state = Authenticated(user);
  void logout() => state = const Unauthenticated();
  void setError(String msg) => state = AuthError(msg);
  void setLoading() => state = const Loading();
}

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
