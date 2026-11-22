// lib/data/models/vendor.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendor.freezed.dart';
part 'vendor.g.dart';

@freezed
class BankAccount with _$BankAccount {
  const factory BankAccount({
    required String bank,
    required String nomorRekening,
    required String atasNama,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);
}

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    required String id,
    required String userId,
    required String namaToko,
    required String deskripsi,
    required String logo,
    required String alamat,
    required String kota,
    required double latitude,
    required double longitude,
    required String kontak,
    required String jamOperasional,
    required String statusVerifikasi, // 'menunggu' | 'aktif' | 'ditolak' | 'ditangguhkan'
    String? alasanTolak,
    required BankAccount rekening,
    required int tarifDendaPerHari,
    required int persenDeposit,
    required String kebijakanBatal,
    required List<String> opsiPengambilan, // ['ambil_di_toko', 'diantar']
    required int biayaAntarPerKm,
    required double radiusAntarMaxKm,
    required double ratingRata,
    required int totalReview,
    required String createdAt,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

extension VendorExtension on Vendor {
  bool get isActive => statusVerifikasi == 'aktif';
  bool get canAntar => opsiPengambilan.contains('diantar') && radiusAntarMaxKm > 0;
  bool get canAmbilDiToko => opsiPengambilan.contains('ambil_di_toko');
}