// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      vendorId: json['vendorId'] as String,
      itemId: json['itemId'] as String,
      qty: (json['qty'] as num).toInt(),
      tglMulai: json['tglMulai'] as String,
      tglSelesai: json['tglSelesai'] as String,
      opsiPengambilan: json['opsiPengambilan'] as String,
      alamatAntar: json['alamatAntar'] as Map<String, dynamic>?,
      biayaAntarEstimasi: (json['biayaAntarEstimasi'] as num?)?.toInt(),
      status: json['status'] as String,
      alasanTolak: json['alasanTolak'] as String?,
      totalEstimasi: (json['totalEstimasi'] as num).toInt(),
      dpDibayar: (json['dpDibayar'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      confirmedAt: json['confirmedAt'] as String?,
      cancelledAt: json['cancelledAt'] as String?,
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'vendorId': instance.vendorId,
      'itemId': instance.itemId,
      'qty': instance.qty,
      'tglMulai': instance.tglMulai,
      'tglSelesai': instance.tglSelesai,
      'opsiPengambilan': instance.opsiPengambilan,
      'alamatAntar': instance.alamatAntar,
      'biayaAntarEstimasi': instance.biayaAntarEstimasi,
      'status': instance.status,
      'alasanTolak': instance.alasanTolak,
      'totalEstimasi': instance.totalEstimasi,
      'dpDibayar': instance.dpDibayar,
      'createdAt': instance.createdAt,
      'confirmedAt': instance.confirmedAt,
      'cancelledAt': instance.cancelledAt,
    };

_$RentalImpl _$$RentalImplFromJson(Map<String, dynamic> json) => _$RentalImpl(
      id: json['id'] as String,
      bookingId: json['bookingId'] as String?,
      vendorId: json['vendorId'] as String,
      userId: json['userId'] as String,
      tglMulai: json['tglMulai'] as String,
      jatuhTempo: json['jatuhTempo'] as String,
      tglKembaliAktual: json['tglKembaliAktual'] as String?,
      totalBiayaSewa: (json['totalBiayaSewa'] as num).toInt(),
      diskon: (json['diskon'] as num).toInt(),
      dendaTelat: (json['dendaTelat'] as num).toInt(),
      biayaGantiRugi: (json['biayaGantiRugi'] as num).toInt(),
      deposit: (json['deposit'] as num).toInt(),
      biayaAntar: (json['biayaAntar'] as num).toInt(),
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      completedAt: json['completedAt'] as String?,
    );

Map<String, dynamic> _$$RentalImplToJson(_$RentalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'vendorId': instance.vendorId,
      'userId': instance.userId,
      'tglMulai': instance.tglMulai,
      'jatuhTempo': instance.jatuhTempo,
      'tglKembaliAktual': instance.tglKembaliAktual,
      'totalBiayaSewa': instance.totalBiayaSewa,
      'diskon': instance.diskon,
      'dendaTelat': instance.dendaTelat,
      'biayaGantiRugi': instance.biayaGantiRugi,
      'deposit': instance.deposit,
      'biayaAntar': instance.biayaAntar,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'completedAt': instance.completedAt,
    };

_$RentalItemImpl _$$RentalItemImplFromJson(Map<String, dynamic> json) =>
    _$RentalItemImpl(
      id: json['id'] as String,
      rentalId: json['rentalId'] as String,
      itemId: json['itemId'] as String,
      qty: (json['qty'] as num).toInt(),
      hargaSatuan: (json['hargaSatuan'] as num).toInt(),
      kondisiKeluar: json['kondisiKeluar'] as Map<String, dynamic>?,
      fotoKondisiKeluar: (json['fotoKondisiKeluar'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      kondisiKembali: json['kondisiKembali'] as Map<String, dynamic>?,
      fotoKondisiKembali: (json['fotoKondisiKembali'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      biayaGantiRugi: (json['biayaGantiRugi'] as num).toInt(),
    );

Map<String, dynamic> _$$RentalItemImplToJson(_$RentalItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rentalId': instance.rentalId,
      'itemId': instance.itemId,
      'qty': instance.qty,
      'hargaSatuan': instance.hargaSatuan,
      'kondisiKeluar': instance.kondisiKeluar,
      'fotoKondisiKeluar': instance.fotoKondisiKeluar,
      'kondisiKembali': instance.kondisiKembali,
      'fotoKondisiKembali': instance.fotoKondisiKembali,
      'biayaGantiRugi': instance.biayaGantiRugi,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: json['id'] as String,
      rentalId: json['rentalId'] as String,
      jumlah: (json['jumlah'] as num).toInt(),
      jenis: json['jenis'] as String,
      metode: json['metode'] as String,
      buktiPath: json['buktiPath'] as String?,
      statusVerifikasi: json['statusVerifikasi'] as String,
      verifiedBy: json['verifiedBy'] as String?,
      verifiedAt: json['verifiedAt'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rentalId': instance.rentalId,
      'jumlah': instance.jumlah,
      'jenis': instance.jenis,
      'metode': instance.metode,
      'buktiPath': instance.buktiPath,
      'statusVerifikasi': instance.statusVerifikasi,
      'verifiedBy': instance.verifiedBy,
      'verifiedAt': instance.verifiedAt,
      'createdAt': instance.createdAt,
    };

_$ExtensionImpl _$$ExtensionImplFromJson(Map<String, dynamic> json) =>
    _$ExtensionImpl(
      id: json['id'] as String,
      rentalId: json['rentalId'] as String,
      jatuhTempoBaru: json['jatuhTempoBaru'] as String,
      biayaTambahan: (json['biayaTambahan'] as num).toInt(),
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
      decidedAt: json['decidedAt'] as String?,
    );

Map<String, dynamic> _$$ExtensionImplToJson(_$ExtensionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rentalId': instance.rentalId,
      'jatuhTempoBaru': instance.jatuhTempoBaru,
      'biayaTambahan': instance.biayaTambahan,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'decidedAt': instance.decidedAt,
    };
