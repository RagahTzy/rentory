import 'package:flutter_test/flutter_test.dart';
import 'package:rentory/core/auth/auth_state.dart';
import 'package:rentory/core/routing/app_router.dart';
import 'package:rentory/data/models/user.dart';

User _user({required String role, String status = 'aktif'}) => User(
      id: 'usr_test',
      email: 'test@rentory.com',
      password: 'x',
      nama: 'Test',
      noHp: '0800',
      role: role,
      isVerified: status == 'aktif',
      status: status,
      createdAt: '2024-01-01T00:00:00Z',
    );

/// Ikuti rantai redirect sampai berhenti; gagal jika berputar (loop).
String _resolve(AuthState auth, String location) {
  final visited = <String>{location};
  var current = location;
  while (true) {
    final next = authRedirect(auth, current);
    if (next == null) return current;
    expect(visited.add(next), isTrue, reason: 'Redirect loop: $visited -> $next');
    current = next;
  }
}

void main() {
  final penyewa = Authenticated(_user(role: 'penyewa'));
  final admin = Authenticated(_user(role: 'admin'));
  final vendorAktif = Authenticated(_user(role: 'pengusaha'));
  final vendorPending = Authenticated(_user(role: 'pengusaha', status: 'menunggu_verifikasi'));

  const locations = [
    '/splash',
    '/auth/login',
    '/auth/register',
    '/home',
    '/product/prd_001',
    '/vendor/dashboard',
    '/vendor/pending',
    '/vendor/products',
    '/admin/dashboard',
    '/admin/disputes',
  ];

  test('tidak ada redirect loop untuk semua kombinasi role x halaman', () {
    for (final auth in [const Unauthenticated(), penyewa, admin, vendorAktif, vendorPending]) {
      for (final loc in locations) {
        _resolve(auth, loc);
      }
    }
  });

  test('belum login diarahkan ke /auth/login (kecuali splash & auth)', () {
    expect(_resolve(const Unauthenticated(), '/home'), '/auth/login');
    expect(_resolve(const Unauthenticated(), '/vendor/dashboard'), '/auth/login');
    expect(_resolve(const Unauthenticated(), '/splash'), '/splash');
    expect(_resolve(const Unauthenticated(), '/auth/register'), '/auth/register');
  });

  test('sudah login & buka halaman auth -> halaman awal sesuai role', () {
    expect(_resolve(penyewa, '/auth/login'), '/home');
    expect(_resolve(admin, '/auth/login'), '/admin/dashboard');
    expect(_resolve(vendorAktif, '/auth/login'), '/vendor/dashboard');
    expect(_resolve(vendorPending, '/auth/login'), '/vendor/pending');
  });

  test('vendor belum terverifikasi tertahan di /vendor/pending', () {
    expect(_resolve(vendorPending, '/vendor/pending'), '/vendor/pending');
    expect(_resolve(vendorPending, '/vendor/dashboard'), '/vendor/pending');
    expect(_resolve(vendorPending, '/vendor/products'), '/vendor/pending');
  });

  test('vendor aktif tidak bisa membuka /vendor/pending', () {
    expect(_resolve(vendorAktif, '/vendor/pending'), '/vendor/dashboard');
    expect(_resolve(vendorAktif, '/vendor/products'), '/vendor/products');
  });

  test('guard role: penyewa tidak bisa ke vendor/admin, vendor tidak bisa ke admin', () {
    expect(_resolve(penyewa, '/vendor/dashboard'), '/home');
    expect(_resolve(penyewa, '/vendor/pending'), '/home');
    expect(_resolve(penyewa, '/admin/dashboard'), '/home');
    expect(_resolve(vendorAktif, '/admin/dashboard'), '/vendor/dashboard');
    expect(_resolve(admin, '/admin/disputes'), '/admin/disputes');
  });
}
