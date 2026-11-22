// lib/presentation/auth/login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rentory/core/theme/app_icons.dart';
import '../../core/utils/validation_utils.dart';
import '../../core/auth/auth_state.dart';
import '../../data/services/api_client.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      // Email → username (GET /users/filter) → POST /auth/login → token ke SharedPreferences.
      final user = await ref.read(authStateProvider.notifier).login(
            _emailController.text.trim(),
            _passwordController.text,
          );
      if (!mounted) return;
      context.go(homePathFor(user));
    } on ApiException catch (e) {
      if (!mounted) return;
      setState(() => _errorMessage = e.statusCode == 400 ? 'Email atau password salah' : e.message);
    } catch (e) {
      if (mounted) setState(() => _errorMessage = 'Terjadi kesalahan: $e');
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                Icon(
                  AppIcons.package,
                  size: 64,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  'Selamat Datang',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Masuk ke akun Rentory Anda',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),

                if (_errorMessage != null)
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(AppIcons.warningCircle, color: Theme.of(context).colorScheme.error, size: 20),
                        const SizedBox(width: 8),
                        Expanded(child: Text(_errorMessage!, style: TextStyle(color: Theme.of(context).colorScheme.error))),
                      ],
                    ),
                  ),

                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'contoh@email.com',
                    prefixIcon: Icon(AppIcons.envelope),
                  ),
                  validator: (v) => validateEmail(v?.trim()),
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan password',
                    prefixIcon: const Icon(AppIcons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword ? AppIcons.eye : AppIcons.eyeSlash),
                      onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                    ),
                  ),
                  validator: (v) => validateRequired(v, 'Password'),
                  onFieldSubmitted: (_) => _handleLogin(),
                ),
                const SizedBox(height: 8),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => context.go('/auth/forgot-password'),
                    child: const Text('Lupa Password?'),
                  ),
                ),
                const SizedBox(height: 24),

                FilledButton(
                  onPressed: _isLoading ? null : _handleLogin,
                  child: _isLoading
                      ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : const Text('Masuk'),
                ),
                const SizedBox(height: 24),

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Akun Demo DummyJSON (ketuk untuk mengisi):', style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 8),
                      _buildDemoAccount('Admin', 'emily.johnson@x.dummyjson.com', 'emilyspass'),
                      _buildDemoAccount('Pengusaha (Sewa Kamera Jaya)', 'olivia.wilson@x.dummyjson.com', 'oliviawpass'),
                      _buildDemoAccount('Pengusaha (Tenda & Outdoor)', 'alexander.jones@x.dummyjson.com', 'alexanderjpass'),
                      _buildDemoAccount('Pengusaha (menunggu verifikasi)', 'ava.taylor@x.dummyjson.com', 'avatpass'),
                      _buildDemoAccount('Penyewa', 'avery.perez@x.dummyjson.com', 'averyppass'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDemoAccount(String label, String email, String pass) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: _isLoading
          ? null
          : () => setState(() {
                _emailController.text = email;
                _passwordController.text = pass;
                _errorMessage = null;
              }),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          '$label:\n$email / $pass',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontFamily: 'monospace',
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }
}