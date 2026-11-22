// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: json['id'] as String,
  vendorId: json['vendor_id'] as String,
  categoryId: json['category_id'] as String,
  nama: json['nama'] as String,
  deskripsi: json['deskripsi'] as String,
  foto: (json['foto'] as List<dynamic>).map((e) => e as String).toList(),
  hargaPerJam: (json['harga_per_jam'] as num?)?.toInt(),
  hargaPerHari: (json['harga_per_hari'] as num).toInt(),
  hargaPerMinggu: (json['harga_per_minggu'] as num).toInt(),
  stok: (json['stok'] as num).toInt(),
  status: json['status'] as String,
  aturanKhusus: json['aturan_khusus'] as String?,
  ratingRata: (json['rating_rata'] as num).toDouble(),
  totalReview: (json['total_review'] as num).toInt(),
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'vendor_id': instance.vendorId,
  'category_id': instance.categoryId,
  'nama': instance.nama,
  'deskripsi': instance.deskripsi,
  'foto': instance.foto,
  'harga_per_jam': instance.hargaPerJam,
  'harga_per_hari': instance.hargaPerHari,
  'harga_per_minggu': instance.hargaPerMinggu,
  'stok': instance.stok,
  'status': instance.status,
  'aturan_khusus': instance.aturanKhusus,
  'rating_rata': instance.ratingRata,
  'total_review': instance.totalReview,
  'created_at': instance.createdAt,
};

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: json['id'] as String,
  nama: json['nama'] as String,
  icon: json['icon'] as String,
  deskripsi: json['deskripsi'] as String,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'nama': instance.nama,
  'icon': instance.icon,
  'deskripsi': instance.deskripsi,
};
