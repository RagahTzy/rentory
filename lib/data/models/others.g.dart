// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'others.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['id'] as String,
      rentalId: json['rentalId'] as String,
      userId: json['userId'] as String,
      vendorId: json['vendorId'] as String,
      itemId: json['itemId'] as String,
      rating: (json['rating'] as num).toInt(),
      komentar: json['komentar'] as String,
      balasanVendor: json['balasanVendor'] as String?,
      balasanAt: json['balasanAt'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rentalId': instance.rentalId,
      'userId': instance.userId,
      'vendorId': instance.vendorId,
      'itemId': instance.itemId,
      'rating': instance.rating,
      'komentar': instance.komentar,
      'balasanVendor': instance.balasanVendor,
      'balasanAt': instance.balasanAt,
      'createdAt': instance.createdAt,
    };

_$VendorBlacklistImpl _$$VendorBlacklistImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorBlacklistImpl(
      id: json['id'] as String,
      vendorId: json['vendorId'] as String,
      userId: json['userId'] as String,
      alasan: json['alasan'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$VendorBlacklistImplToJson(
        _$VendorBlacklistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorId': instance.vendorId,
      'userId': instance.userId,
      'alasan': instance.alasan,
      'createdAt': instance.createdAt,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      pengirimId: json['pengirimId'] as String,
      penerimaId: json['penerimaId'] as String,
      rentalId: json['rentalId'] as String?,
      bookingId: json['bookingId'] as String?,
      isi: json['isi'] as String,
      createdAt: json['createdAt'] as String,
      isRead: json['isRead'] as bool,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pengirimId': instance.pengirimId,
      'penerimaId': instance.penerimaId,
      'rentalId': instance.rentalId,
      'bookingId': instance.bookingId,
      'isi': instance.isi,
      'createdAt': instance.createdAt,
      'isRead': instance.isRead,
    };

_$MaintenanceImpl _$$MaintenanceImplFromJson(Map<String, dynamic> json) =>
    _$MaintenanceImpl(
      id: json['id'] as String,
      itemId: json['itemId'] as String,
      deskripsi: json['deskripsi'] as String,
      biaya: (json['biaya'] as num).toInt(),
      tglMulai: json['tglMulai'] as String,
      tglSelesai: json['tglSelesai'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$MaintenanceImplToJson(_$MaintenanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'deskripsi': instance.deskripsi,
      'biaya': instance.biaya,
      'tglMulai': instance.tglMulai,
      'tglSelesai': instance.tglSelesai,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };

_$DisputeImpl _$$DisputeImplFromJson(Map<String, dynamic> json) =>
    _$DisputeImpl(
      id: json['id'] as String,
      rentalId: json['rentalId'] as String,
      pelaporId: json['pelaporId'] as String,
      deskripsi: json['deskripsi'] as String,
      bukti: (json['bukti'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as String,
      keputusanAdmin: json['keputusanAdmin'] as String?,
      decidedAt: json['decidedAt'] as String?,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$DisputeImplToJson(_$DisputeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rentalId': instance.rentalId,
      'pelaporId': instance.pelaporId,
      'deskripsi': instance.deskripsi,
      'bukti': instance.bukti,
      'status': instance.status,
      'keputusanAdmin': instance.keputusanAdmin,
      'decidedAt': instance.decidedAt,
      'createdAt': instance.createdAt,
    };

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      judul: json['judul'] as String,
      isi: json['isi'] as String,
      tipe: json['tipe'] as String,
      referenceId: json['referenceId'] as String?,
      isRead: json['isRead'] as bool,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'judul': instance.judul,
      'isi': instance.isi,
      'tipe': instance.tipe,
      'referenceId': instance.referenceId,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt,
    };

_$VendorDocumentImpl _$$VendorDocumentImplFromJson(Map<String, dynamic> json) =>
    _$VendorDocumentImpl(
      id: json['id'] as String,
      vendorId: json['vendorId'] as String,
      jenis: json['jenis'] as String,
      filePath: json['filePath'] as String,
      status: json['status'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$VendorDocumentImplToJson(
        _$VendorDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendorId': instance.vendorId,
      'jenis': instance.jenis,
      'filePath': instance.filePath,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
