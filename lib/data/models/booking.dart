// lib/data/models/booking.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
abstract class Booking with _$Booking {
  const factory Booking({
    required String id,
    required String userId, // penyewa
    required String vendorId,
    required String itemId,
    required int qty,
    required String tglMulai,
    required String tglSelesai,
    required String opsiPengambilan, // 'ambil_di_toko' | 'diantar'
    Map<String, dynamic>? alamatAntar,
    int? biayaAntarEstimasi,
    required String status, // 'menunggu' | 'dikonfirmasi' | 'ditolak' | 'dibatalkan'
    String? alasanTolak,
    required int totalEstimasi,
    required int dpDibayar,
    required String createdAt,
    String? confirmedAt,
    String? cancelledAt,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}

@freezed
abstract class Rental with _$Rental {
  const factory Rental({
    required String id,
    String? bookingId, // nullable untuk walk-in
    required String vendorId,
    required String userId, // penyewa
    required String tglMulai,
    required String jatuhTempo,
    String? tglKembaliAktual,
    required int totalBiayaSewa,
    required int diskon,
    required int dendaTelat,
    required int biayaGantiRugi,
    required int deposit,
    required int biayaAntar,
    required String status, // 'aktif' | 'selesai' | 'dibatalkan' | 'sengketa'
    required String createdAt,
    String? completedAt,
  }) = _Rental;

  factory Rental.fromJson(Map<String, dynamic> json) => _$RentalFromJson(json);
}

@freezed
abstract class RentalItem with _$RentalItem {
  const factory RentalItem({
    required String id,
    required String rentalId,
    required String itemId,
    required int qty,
    required int hargaSatuan,
    Map<String, dynamic>? kondisiKeluar,
    List<String>? fotoKondisiKeluar,
    Map<String, dynamic>? kondisiKembali,
    List<String>? fotoKondisiKembali,
    required int biayaGantiRugi,
  }) = _RentalItem;

  factory RentalItem.fromJson(Map<String, dynamic> json) => _$RentalItemFromJson(json);
}

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required String id,
    required String rentalId,
    required int jumlah,
    required String jenis, // 'dp' | 'pelunasan' | 'denda' | 'deposit_kembali' | 'biaya_antar'
    required String metode, // 'transfer' | 'tunai'
    String? buktiPath,
    required String statusVerifikasi, // 'pending' | 'verified' | 'rejected'
    String? verifiedBy,
    String? verifiedAt,
    required String createdAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}

@freezed
abstract class Extension with _$Extension {
  const factory Extension({
    required String id,
    required String rentalId,
    required String jatuhTempoBaru,
    required int biayaTambahan,
    required String status, // 'pending' | 'approved' | 'rejected'
    required String createdAt,
    String? decidedAt,
  }) = _Extension;

  factory Extension.fromJson(Map<String, dynamic> json) => _$ExtensionFromJson(json);
}