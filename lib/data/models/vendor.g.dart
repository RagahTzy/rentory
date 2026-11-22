// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankAccountImpl _$$BankAccountImplFromJson(Map<String, dynamic> json) =>
    _$BankAccountImpl(
      bank: json['bank'] as String,
      nomorRekening: json['nomorRekening'] as String,
      atasNama: json['atasNama'] as String,
    );

Map<String, dynamic> _$$BankAccountImplToJson(_$BankAccountImpl instance) =>
    <String, dynamic>{
      'bank': instance.bank,
      'nomorRekening': instance.nomorRekening,
      'atasNama': instance.atasNama,
    };

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      namaToko: json['namaToko'] as String,
      deskripsi: json['deskripsi'] as String,
      logo: json['logo'] as String,
      alamat: json['alamat'] as String,
      kota: json['kota'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      kontak: json['kontak'] as String,
      jamOperasional: json['jamOperasional'] as String,
      statusVerifikasi: json['statusVerifikasi'] as String,
      alasanTolak: json['alasanTolak'] as String?,
      rekening: BankAccount.fromJson(json['rekening'] as Map<String, dynamic>),
      tarifDendaPerHari: (json['tarifDendaPerHari'] as num).toInt(),
      persenDeposit: (json['persenDeposit'] as num).toInt(),
      kebijakanBatal: json['kebijakanBatal'] as String,
      opsiPengambilan: (json['opsiPengambilan'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      biayaAntarPerKm: (json['biayaAntarPerKm'] as num).toInt(),
      radiusAntarMaxKm: (json['radiusAntarMaxKm'] as num).toDouble(),
      ratingRata: (json['ratingRata'] as num).toDouble(),
      totalReview: (json['totalReview'] as num).toInt(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'namaToko': instance.namaToko,
      'deskripsi': instance.deskripsi,
      'logo': instance.logo,
      'alamat': instance.alamat,
      'kota': instance.kota,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'kontak': instance.kontak,
      'jamOperasional': instance.jamOperasional,
      'statusVerifikasi': instance.statusVerifikasi,
      'alasanTolak': instance.alasanTolak,
      'rekening': instance.rekening,
      'tarifDendaPerHari': instance.tarifDendaPerHari,
      'persenDeposit': instance.persenDeposit,
      'kebijakanBatal': instance.kebijakanBatal,
      'opsiPengambilan': instance.opsiPengambilan,
      'biayaAntarPerKm': instance.biayaAntarPerKm,
      'radiusAntarMaxKm': instance.radiusAntarMaxKm,
      'ratingRata': instance.ratingRata,
      'totalReview': instance.totalReview,
      'createdAt': instance.createdAt,
    };
