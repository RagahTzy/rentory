// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      nama: json['nama'] as String,
      noHp: json['noHp'] as String,
      role: json['role'] as String,
      isVerified: json['isVerified'] as bool,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      alamat: json['alamat'] as String?,
      noIdentitas: json['noIdentitas'] as String?,
      fotoIdentitas: json['fotoIdentitas'] as String?,
      vendorId: json['vendorId'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'nama': instance.nama,
      'noHp': instance.noHp,
      'role': instance.role,
      'isVerified': instance.isVerified,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'alamat': instance.alamat,
      'noIdentitas': instance.noIdentitas,
      'fotoIdentitas': instance.fotoIdentitas,
      'vendorId': instance.vendorId,
    };
