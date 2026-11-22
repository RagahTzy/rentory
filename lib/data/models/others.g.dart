// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'others.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  id: json['id'] as String,
  rentalId: json['rental_id'] as String,
  userId: json['user_id'] as String,
  vendorId: json['vendor_id'] as String,
  itemId: json['item_id'] as String,
  rating: (json['rating'] as num).toInt(),
  komentar: json['komentar'] as String,
  balasanVendor: json['balasan_vendor'] as String?,
  balasanAt: json['balasan_at'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'id': instance.id,
  'rental_id': instance.rentalId,
  'user_id': instance.userId,
  'vendor_id': instance.vendorId,
  'item_id': instance.itemId,
  'rating': instance.rating,
  'komentar': instance.komentar,
  'balasan_vendor': instance.balasanVendor,
  'balasan_at': instance.balasanAt,
  'created_at': instance.createdAt,
};

_VendorBlacklist _$VendorBlacklistFromJson(Map<String, dynamic> json) =>
    _VendorBlacklist(
      id: json['id'] as String,
      vendorId: json['vendor_id'] as String,
      userId: json['user_id'] as String,
      alasan: json['alasan'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$VendorBlacklistToJson(_VendorBlacklist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendor_id': instance.vendorId,
      'user_id': instance.userId,
      'alasan': instance.alasan,
      'created_at': instance.createdAt,
    };

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: json['id'] as String,
  pengirimId: json['pengirim_id'] as String,
  penerimaId: json['penerima_id'] as String,
  rentalId: json['rental_id'] as String?,
  bookingId: json['booking_id'] as String?,
  isi: json['isi'] as String,
  createdAt: json['created_at'] as String,
  isRead: json['is_read'] as bool,
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': instance.id,
  'pengirim_id': instance.pengirimId,
  'penerima_id': instance.penerimaId,
  'rental_id': instance.rentalId,
  'booking_id': instance.bookingId,
  'isi': instance.isi,
  'created_at': instance.createdAt,
  'is_read': instance.isRead,
};

_Maintenance _$MaintenanceFromJson(Map<String, dynamic> json) => _Maintenance(
  id: json['id'] as String,
  itemId: json['item_id'] as String,
  deskripsi: json['deskripsi'] as String,
  biaya: (json['biaya'] as num).toInt(),
  tglMulai: json['tgl_mulai'] as String,
  tglSelesai: json['tgl_selesai'] as String,
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$MaintenanceToJson(_Maintenance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'deskripsi': instance.deskripsi,
      'biaya': instance.biaya,
      'tgl_mulai': instance.tglMulai,
      'tgl_selesai': instance.tglSelesai,
      'status': instance.status,
      'created_at': instance.createdAt,
    };

_Dispute _$DisputeFromJson(Map<String, dynamic> json) => _Dispute(
  id: json['id'] as String,
  rentalId: json['rental_id'] as String,
  pelaporId: json['pelapor_id'] as String,
  deskripsi: json['deskripsi'] as String,
  bukti: (json['bukti'] as List<dynamic>).map((e) => e as String).toList(),
  status: json['status'] as String,
  keputusanAdmin: json['keputusan_admin'] as String?,
  decidedAt: json['decided_at'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$DisputeToJson(_Dispute instance) => <String, dynamic>{
  'id': instance.id,
  'rental_id': instance.rentalId,
  'pelapor_id': instance.pelaporId,
  'deskripsi': instance.deskripsi,
  'bukti': instance.bukti,
  'status': instance.status,
  'keputusan_admin': instance.keputusanAdmin,
  'decided_at': instance.decidedAt,
  'created_at': instance.createdAt,
};

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    _Notification(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      judul: json['judul'] as String,
      isi: json['isi'] as String,
      tipe: json['tipe'] as String,
      referenceId: json['reference_id'] as String?,
      isRead: json['is_read'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'judul': instance.judul,
      'isi': instance.isi,
      'tipe': instance.tipe,
      'reference_id': instance.referenceId,
      'is_read': instance.isRead,
      'created_at': instance.createdAt,
    };

_VendorDocument _$VendorDocumentFromJson(Map<String, dynamic> json) =>
    _VendorDocument(
      id: json['id'] as String,
      vendorId: json['vendor_id'] as String,
      jenis: json['jenis'] as String,
      filePath: json['file_path'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$VendorDocumentToJson(_VendorDocument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vendor_id': instance.vendorId,
      'jenis': instance.jenis,
      'file_path': instance.filePath,
      'status': instance.status,
      'created_at': instance.createdAt,
    };
