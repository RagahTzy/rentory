import 'package:flutter_test/flutter_test.dart';
import 'package:rentory/core/auth/auth_state.dart';
import 'package:rentory/data/services/auth_service.dart';
import 'package:rentory/data/services/product_service.dart';

/// Memastikan data dummy JSON (snake_case) ter-parse ke model Freezed (camelCase).
/// Dulu ini melempar TypeError "Null is not a subtype of String" saat startup.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await AuthService.init();
    await ProductService.init();
  });

  test('users.json ter-load lengkap (no_hp, is_verified, created_at)', () {
    final users = AuthService.getAllUsers();
    expect(users, hasLength(6));
    for (final u in users) {
      expect(u.noHp, isNotEmpty);
      expect(u.createdAt, isNotEmpty);
    }
  });

  test('products.json & categories.json ter-load lengkap', () {
    final products = ProductService.getAllProducts();
    expect(products, hasLength(12));
    expect(products.every((p) => p.vendorId.startsWith('vnd_')), isTrue);
    expect(products.every((p) => p.categoryId.startsWith('cat_')), isTrue);
    expect(products.every((p) => p.hargaPerHari > 0), isTrue);
    expect(ProductService.getAllCategories(), hasLength(6));
  });

  test('login demo diarahkan ke halaman yang sesuai role', () async {
    final cases = {
      'admin@rentory.com': ('admin123', '/admin/dashboard'),
      'budi@toko.com': ('budi123', '/vendor/dashboard'),
      'andi@sewa.com': ('andi123', '/home'),
      // vendor menunggu verifikasi: dulu tidak bisa login sama sekali
      'ratna@toko.com': ('ratna123', '/vendor/pending'),
    };
    for (final MapEntry(key: email, value: (password, expectedPath)) in cases.entries) {
      final user = await AuthService.login(email, password);
      expect(user, isNotNull, reason: email);
      expect(homePathFor(user!), expectedPath, reason: email);
    }
  });

  test('password salah tetap ditolak', () async {
    expect(await AuthService.login('admin@rentory.com', 'salah'), isNull);
  });
}
