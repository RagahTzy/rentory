// lib/data/models/product.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String vendorId,
    required String categoryId,
    required String nama,
    required String deskripsi,
    required List<String> foto,
    int? hargaPerJam,
    required int hargaPerHari,
    required int hargaPerMinggu,
    required int stok,
    required String status, // 'tersedia' | 'disewa' | 'dibooking' | 'maintenance' | 'nonaktif'
    String? aturanKhusus,
    required double ratingRata,
    required int totalReview,
    required String createdAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String nama,
    required String icon,
    required String deskripsi,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

// Extension untuk helper
extension ProductExtension on Product {
  int getHarga(String satuan) {
    switch (satuan) {
      case 'jam':
        return hargaPerJam ?? (hargaPerHari / 8).round();
      case 'hari':
        return hargaPerHari;
      case 'minggu':
        return hargaPerMinggu;
      default:
        return hargaPerHari;
    }
  }

  bool get isAvailable => status == 'tersedia' && stok > 0;
}