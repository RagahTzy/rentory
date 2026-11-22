// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccount _$BankAccountFromJson(Map<String, dynamic> json) => _BankAccount(
  bank: json['bank'] as String,
  nomorRekening: json['nomor_rekening'] as String,
  atasNama: json['atas_nama'] as String,
);

Map<String, dynamic> _$BankAccountToJson(_BankAccount instance) =>
    <String, dynamic>{
      'bank': instance.bank,
      'nomor_rekening': instance.nomorRekening,
      'atas_nama': instance.atasNama,
    };

_Vendor _$VendorFromJson(Map<String, dynamic> json) => _Vendor(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  namaToko: json['nama_toko'] as String,
  deskripsi: json['deskripsi'] as String,
  logo: json['logo'] as String,
  alamat: json['alamat'] as String,
  kota: json['kota'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  kontak: json['kontak'] as String,
  jamOperasional: json['jam_operasional'] as String,
  statusVerifikasi: json['status_verifikasi'] as String,
  alasanTolak: json['alasan_tolak'] as String?,
  rekening: BankAccount.fromJson(json['rekening'] as Map<String, dynamic>),
  tarifDendaPerHari: (json['tarif_denda_per_hari'] as num).toInt(),
  persenDeposit: (json['persen_deposit'] as num).toInt(),
  kebijakanBatal: json['kebijakan_batal'] as String,
  opsiPengambilan: (json['opsi_pengambilan'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  biayaAntarPerKm: (json['biaya_antar_per_km'] as num).toInt(),
  radiusAntarMaxKm: (json['radius_antar_max_km'] as num).toDouble(),
  ratingRata: (json['rating_rata'] as num).toDouble(),
  totalReview: (json['total_review'] as num).toInt(),
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$VendorToJson(_Vendor instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'nama_toko': instance.namaToko,
  'deskripsi': instance.deskripsi,
  'logo': instance.logo,
  'alamat': instance.alamat,
  'kota': instance.kota,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'kontak': instance.kontak,
  'jam_operasional': instance.jamOperasional,
  'status_verifikasi': instance.statusVerifikasi,
  'alasan_tolak': instance.alasanTolak,
  'rekening': instance.rekening,
  'tarif_denda_per_hari': instance.tarifDendaPerHari,
  'persen_deposit': instance.persenDeposit,
  'kebijakan_batal': instance.kebijakanBatal,
  'opsi_pengambilan': instance.opsiPengambilan,
  'biaya_antar_per_km': instance.biayaAntarPerKm,
  'radius_antar_max_km': instance.radiusAntarMaxKm,
  'rating_rata': instance.ratingRata,
  'total_review': instance.totalReview,
  'created_at': instance.createdAt,
};
