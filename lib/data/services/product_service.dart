// lib/data/services/product_service.dart
//
// Semua data produk berasal dari API DummyJSON lewat endpoint /auth/products
// (wajib Bearer token hasil login). Field khusus sewa yang tidak ada di
// DummyJSON (toko, tarif per hari/minggu, aturan sewa) ditambahkan oleh
// RentalCatalog (lib/core/constants/rental_catalog.dart).
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/api_constants.dart';
import '../../core/constants/app_constants.dart';
import '../../core/constants/rental_catalog.dart';
import '../models/api_models.dart';
import '../models/product.dart';
import 'api_client.dart';

/// Katalog sewa: produk & kategori DummyJSON yang disewakan.
class Catalog {
  final List<Product> products;
  final List<Category> categories;
  const Catalog({required this.products, required this.categories});

  List<Product> get available => products.where((p) => p.isAvailable).toList();

  Product? byId(String id) {
    for (final p in products) {
      if (p.id == id) return p;
    }
    return null;
  }
}

class ProductService {
  static const _catalogFields =
      'id,title,description,price,stock,category,brand,thumbnail,rating,images,availabilityStatus,reviews';
  static const _crudFields = 'id,title,description,price,stock,category,brand,thumbnail,rating';

  // ===========================================================================
  // Katalog sewa (Read)
  // ===========================================================================

  /// GET /auth/products?limit=0 + GET /auth/products/categories, lalu disaring
  /// ke kategori yang disewakan dan dilengkapi data sewa.
  static Future<Catalog> fetchCatalog() async {
    final results = await Future.wait([
      ApiClient.get(ApiConstants.products, query: {'limit': '0', 'select': _catalogFields}),
      ApiClient.get(ApiConstants.productCategories),
    ]);

    final page = ApiProductPage.fromJson(results[0] as Map<String, dynamic>);
    final products = page.products.map(toRentalProduct).whereType<Product>().toList();

    final categories = (results[1] as List<dynamic>)
        .map((e) => ApiCategory.fromJson(e as Map<String, dynamic>))
        .where((c) => RentalCatalog.isRentable(c.slug))
        .map((c) => Category(
              id: c.slug,
              nama: RentalCatalog.labelFor(c.slug),
              icon: '',
              deskripsi: c.name, // nama asli dari API
            ))
        .toList();

    return Catalog(products: products, categories: categories);
  }

  /// GET /auth/products/{id} → produk sewa (detail lengkap).
  static Future<Product> fetchProduct(String id) async {
    final apiId = int.tryParse(id);
    if (apiId == null) throw const ApiException('Produk tidak ditemukan', statusCode: 404);
    final product = toRentalProduct(await fetchApiProduct(apiId));
    if (product == null) {
      throw const ApiException('Produk ini tidak tersedia untuk disewa', statusCode: 404);
    }
    return product;
  }

  /// Ubah produk DummyJSON → produk sewa. Null jika kategorinya tidak disewakan.
  static Product? toRentalProduct(ApiProduct p) {
    final rental = RentalCatalog.categories[p.category];
    if (rental == null) return null;

    final hargaPerHari = RentalCatalog.hargaPerHari(p.price);
    final habis = p.stock <= 0 || p.availabilityStatus == 'Out of Stock';
    return Product(
      id: '${p.id}',
      vendorId: rental.vendorId,
      categoryId: p.category,
      nama: p.title,
      deskripsi: p.description,
      foto: p.images.isNotEmpty ? p.images : [?p.thumbnail],
      hargaPerHari: hargaPerHari,
      hargaPerMinggu: hargaPerHari * RentalCatalog.hariBayarPerMinggu,
      stok: p.stock,
      // Stok habis di API = semua unit sedang disewa.
      status: habis ? AppConstants.statusDisewa : AppConstants.statusTersedia,
      aturanKhusus: rental.aturanKhusus,
      ratingRata: (p.rating ?? 0).toDouble(),
      totalReview: p.reviews.length,
      createdAt: '',
    );
  }

  // ===========================================================================
  // CRUD produk (/auth/products → wajib Bearer token)
  // Catatan: DummyJSON hanya MENSIMULASIKAN perubahan; data di server tidak
  // benar-benar tersimpan, jadi UI memakai hasil response untuk update list.
  // ===========================================================================

  /// GET /auth/products?limit=&skip=&q= (Read)
  static Future<ApiProductPage> fetchApiProducts({int limit = 20, int skip = 0, String? query}) async {
    final hasQuery = query != null && query.trim().isNotEmpty;
    final json = await ApiClient.get(
      hasQuery ? '${ApiConstants.products}/search' : ApiConstants.products,
      query: {
        'limit': '$limit',
        'skip': '$skip',
        'select': _crudFields,
        if (hasQuery) 'q': query.trim(),
      },
    );
    return ApiProductPage.fromJson(json as Map<String, dynamic>);
  }

  /// GET /auth/products/{id} (Read detail)
  static Future<ApiProduct> fetchApiProduct(int id) async {
    final json = await ApiClient.get('${ApiConstants.products}/$id');
    return ApiProduct.fromJson(json as Map<String, dynamic>);
  }

  /// POST /auth/products/add (Create)
  static Future<ApiProduct> createApiProduct(Map<String, dynamic> data) async {
    final json = await ApiClient.post(ApiConstants.addProduct, body: data);
    return ApiProduct.fromJson(json as Map<String, dynamic>);
  }

  /// PUT /auth/products/{id} (Update)
  static Future<ApiProduct> updateApiProduct(int id, Map<String, dynamic> data) async {
    final json = await ApiClient.put('${ApiConstants.products}/$id', body: data);
    return ApiProduct.fromJson(json as Map<String, dynamic>);
  }

  /// DELETE /auth/products/{id} (Delete). Mengembalikan true jika `isDeleted`.
  static Future<bool> deleteApiProduct(int id) async {
    final json = await ApiClient.delete('${ApiConstants.products}/$id');
    return json is Map && json['isDeleted'] == true;
  }
}

// =============================================================================
// Provider (dipakai layar Beranda, Cari, Detail, Booking)
// =============================================================================

/// Katalog sewa dari API. Di-cache selama sesi; di-reset saat logout.
/// `retry: null` → tidak retry otomatis; layar menyediakan tombol "Coba Lagi".
final catalogProvider = FutureProvider<Catalog>(
  (ref) => ProductService.fetchCatalog(),
  retry: (_, _) => null,
);

/// Detail produk: pakai katalog jika sudah dimuat, jika belum GET /auth/products/{id}.
final productDetailProvider = FutureProvider.autoDispose.family<Product, String>(
  (ref, id) async {
    final cached = ref.read(catalogProvider).value?.byId(id);
    return cached ?? await ProductService.fetchProduct(id);
  },
  retry: (_, _) => null,
);
