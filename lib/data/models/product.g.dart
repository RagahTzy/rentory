// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      vendorId: json['vendorId'] as String,
      categoryId: json['categoryId'] as String,
      nama: json['nama'] as String,
      deskripsi: json['deskripsi'] as String,
      foto: (json['foto'] as List<dynamic>).map((e) => e as String).toList(),
      hargaPerJam: (json['hargaPerJam'] as num?)?.toInt(),
      hargaPerHari: (json['hargaPerHari'] as num).toInt(),
      hargaPerMinggu: (json['hargaPerMinggu'] as num).toInt(),
      stok: (json['stok'] as num).toInt(),
      status: json['status'] as String,
      aturanKhusus: json['aturanKhusus'] as String?,
      ratingRata: (json['ratingRata'] as num).toDouble(),
      totalReview: (json['totalReview'] as num).toInt(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorId': instance.vendorId,
      'categoryId': instance.categoryId,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'foto': instance.foto,
      'hargaPerJam': instance.hargaPerJam,
      'hargaPerHari': instance.hargaPerHari,
      'hargaPerMinggu': instance.hargaPerMinggu,
      'stok': instance.stok,
      'status': instance.status,
      'aturanKhusus': instance.aturanKhusus,
      'ratingRata': instance.ratingRata,
      'totalReview': instance.totalReview,
      'createdAt': instance.createdAt,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String,
      nama: json['nama'] as String,
      icon: json['icon'] as String,
      deskripsi: json['deskripsi'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'icon': instance.icon,
      'deskripsi': instance.deskripsi,
    };
