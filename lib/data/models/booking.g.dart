// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Booking _$BookingFromJson(Map<String, dynamic> json) => _Booking(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  vendorId: json['vendor_id'] as String,
  itemId: json['item_id'] as String,
  qty: (json['qty'] as num).toInt(),
  tglMulai: json['tgl_mulai'] as String,
  tglSelesai: json['tgl_selesai'] as String,
  opsiPengambilan: json['opsi_pengambilan'] as String,
  alamatAntar: json['alamat_antar'] as Map<String, dynamic>?,
  biayaAntarEstimasi: (json['biaya_antar_estimasi'] as num?)?.toInt(),
  status: json['status'] as String,
  alasanTolak: json['alasan_tolak'] as String?,
  totalEstimasi: (json['total_estimasi'] as num).toInt(),
  dpDibayar: (json['dp_dibayar'] as num).toInt(),
  createdAt: json['created_at'] as String,
  confirmedAt: json['confirmed_at'] as String?,
  cancelledAt: json['cancelled_at'] as String?,
);

Map<String, dynamic> _$BookingToJson(_Booking instance) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'vendor_id': instance.vendorId,
  'item_id': instance.itemId,
  'qty': instance.qty,
  'tgl_mulai': instance.tglMulai,
  'tgl_selesai': instance.tglSelesai,
  'opsi_pengambilan': instance.opsiPengambilan,
  'alamat_antar': instance.alamatAntar,
  'biaya_antar_estimasi': instance.biayaAntarEstimasi,
  'status': instance.status,
  'alasan_tolak': instance.alasanTolak,
  'total_estimasi': instance.totalEstimasi,
  'dp_dibayar': instance.dpDibayar,
  'created_at': instance.createdAt,
  'confirmed_at': instance.confirmedAt,
  'cancelled_at': instance.cancelledAt,
};

_Rental _$RentalFromJson(Map<String, dynamic> json) => _Rental(
  id: json['id'] as String,
  bookingId: json['booking_id'] as String?,
  vendorId: json['vendor_id'] as String,
  userId: json['user_id'] as String,
  tglMulai: json['tgl_mulai'] as String,
  jatuhTempo: json['jatuh_tempo'] as String,
  tglKembaliAktual: json['tgl_kembali_aktual'] as String?,
  totalBiayaSewa: (json['total_biaya_sewa'] as num).toInt(),
  diskon: (json['diskon'] as num).toInt(),
  dendaTelat: (json['denda_telat'] as num).toInt(),
  biayaGantiRugi: (json['biaya_ganti_rugi'] as num).toInt(),
  deposit: (json['deposit'] as num).toInt(),
  biayaAntar: (json['biaya_antar'] as num).toInt(),
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  completedAt: json['completed_at'] as String?,
);

Map<String, dynamic> _$RentalToJson(_Rental instance) => <String, dynamic>{
  'id': instance.id,
  'booking_id': instance.bookingId,
  'vendor_id': instance.vendorId,
  'user_id': instance.userId,
  'tgl_mulai': instance.tglMulai,
  'jatuh_tempo': instance.jatuhTempo,
  'tgl_kembali_aktual': instance.tglKembaliAktual,
  'total_biaya_sewa': instance.totalBiayaSewa,
  'diskon': instance.diskon,
  'denda_telat': instance.dendaTelat,
  'biaya_ganti_rugi': instance.biayaGantiRugi,
  'deposit': instance.deposit,
  'biaya_antar': instance.biayaAntar,
  'status': instance.status,
  'created_at': instance.createdAt,
  'completed_at': instance.completedAt,
};

_RentalItem _$RentalItemFromJson(Map<String, dynamic> json) => _RentalItem(
  id: json['id'] as String,
  rentalId: json['rental_id'] as String,
  itemId: json['item_id'] as String,
  qty: (json['qty'] as num).toInt(),
  hargaSatuan: (json['harga_satuan'] as num).toInt(),
  kondisiKeluar: json['kondisi_keluar'] as Map<String, dynamic>?,
  fotoKondisiKeluar: (json['foto_kondisi_keluar'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  kondisiKembali: json['kondisi_kembali'] as Map<String, dynamic>?,
  fotoKondisiKembali: (json['foto_kondisi_kembali'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  biayaGantiRugi: (json['biaya_ganti_rugi'] as num).toInt(),
);

Map<String, dynamic> _$RentalItemToJson(_RentalItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rental_id': instance.rentalId,
      'item_id': instance.itemId,
      'qty': instance.qty,
      'harga_satuan': instance.hargaSatuan,
      'kondisi_keluar': instance.kondisiKeluar,
      'foto_kondisi_keluar': instance.fotoKondisiKeluar,
      'kondisi_kembali': instance.kondisiKembali,
      'foto_kondisi_kembali': instance.fotoKondisiKembali,
      'biaya_ganti_rugi': instance.biayaGantiRugi,
    };

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: json['id'] as String,
  rentalId: json['rental_id'] as String,
  jumlah: (json['jumlah'] as num).toInt(),
  jenis: json['jenis'] as String,
  metode: json['metode'] as String,
  buktiPath: json['bukti_path'] as String?,
  statusVerifikasi: json['status_verifikasi'] as String,
  verifiedBy: json['verified_by'] as String?,
  verifiedAt: json['verified_at'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': instance.id,
  'rental_id': instance.rentalId,
  'jumlah': instance.jumlah,
  'jenis': instance.jenis,
  'metode': instance.metode,
  'bukti_path': instance.buktiPath,
  'status_verifikasi': instance.statusVerifikasi,
  'verified_by': instance.verifiedBy,
  'verified_at': instance.verifiedAt,
  'created_at': instance.createdAt,
};

_Extension _$ExtensionFromJson(Map<String, dynamic> json) => _Extension(
  id: json['id'] as String,
  rentalId: json['rental_id'] as String,
  jatuhTempoBaru: json['jatuh_tempo_baru'] as String,
  biayaTambahan: (json['biaya_tambahan'] as num).toInt(),
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  decidedAt: json['decided_at'] as String?,
);

Map<String, dynamic> _$ExtensionToJson(_Extension instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rental_id': instance.rentalId,
      'jatuh_tempo_baru': instance.jatuhTempoBaru,
      'biaya_tambahan': instance.biayaTambahan,
      'status': instance.status,
      'created_at': instance.createdAt,
      'decided_at': instance.decidedAt,
    };
