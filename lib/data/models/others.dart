// lib/data/models/others.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'others.freezed.dart';
part 'others.g.dart';

@freezed
abstract class Review with _$Review {
  const factory Review({
    required String id,
    required String rentalId,
    required String userId,
    required String vendorId,
    required String itemId,
    required int rating, // 1-5
    required String komentar,
    String? balasanVendor,
    String? balasanAt,
    required String createdAt,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
abstract class VendorBlacklist with _$VendorBlacklist {
  const factory VendorBlacklist({
    required String id,
    required String vendorId,
    required String userId,
    required String alasan,
    required String createdAt,
  }) = _VendorBlacklist;

  factory VendorBlacklist.fromJson(Map<String, dynamic> json) => _$VendorBlacklistFromJson(json);
}

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    required String pengirimId,
    required String penerimaId,
    String? rentalId,
    String? bookingId,
    required String isi,
    required String createdAt,
    required bool isRead,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
abstract class Maintenance with _$Maintenance {
  const factory Maintenance({
    required String id,
    required String itemId,
    required String deskripsi,
    required int biaya,
    required String tglMulai,
    required String tglSelesai,
    required String status, // 'dijadwalkan' | 'sedang' | 'selesai'
    required String createdAt,
  }) = _Maintenance;

  factory Maintenance.fromJson(Map<String, dynamic> json) => _$MaintenanceFromJson(json);
}

@freezed
abstract class Dispute with _$Dispute {
  const factory Dispute({
    required String id,
    required String rentalId,
    required String pelaporId,
    required String deskripsi,
    required List<String> bukti,
    required String status, // 'diajukan' | 'diproses' | 'selesai'
    String? keputusanAdmin,
    String? decidedAt,
    required String createdAt,
  }) = _Dispute;

  factory Dispute.fromJson(Map<String, dynamic> json) => _$DisputeFromJson(json);
}

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required String id,
    required String userId,
    required String judul,
    required String isi,
    required String tipe, // 'booking' | 'payment' | 'rental' | 'review' | 'chat' | 'system'
    String? referenceId,
    required bool isRead,
    required String createdAt,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}

@freezed
abstract class VendorDocument with _$VendorDocument {
  const factory VendorDocument({
    required String id,
    required String vendorId,
    required String jenis, // 'ktp' | 'selfie' | 'nib'
    required String filePath,
    required String status, // 'pending' | 'verified' | 'rejected'
    required String createdAt,
  }) = _VendorDocument;

  factory VendorDocument.fromJson(Map<String, dynamic> json) => _$VendorDocumentFromJson(json);
}