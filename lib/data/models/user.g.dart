// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  email: json['email'] as String,
  nama: json['nama'] as String,
  noHp: json['no_hp'] as String,
  role: json['role'] as String,
  isVerified: json['is_verified'] as bool,
  status: json['status'] as String,
  createdAt: json['created_at'] as String?,
  alamat: json['alamat'] as String?,
  noIdentitas: json['no_identitas'] as String?,
  fotoIdentitas: json['foto_identitas'] as String?,
  vendorId: json['vendor_id'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'nama': instance.nama,
  'no_hp': instance.noHp,
  'role': instance.role,
  'is_verified': instance.isVerified,
  'status': instance.status,
  'created_at': instance.createdAt,
  'alamat': instance.alamat,
  'no_identitas': instance.noIdentitas,
  'foto_identitas': instance.fotoIdentitas,
  'vendor_id': instance.vendorId,
};
