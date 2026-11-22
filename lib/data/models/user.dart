// lib/data/models/user.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String password,
    required String nama,
    required String noHp,
    required String role, // 'penyewa' | 'pengusaha' | 'admin'
    required bool isVerified,
    required String status, // 'aktif' | 'menunggu_verifikasi' | 'ditolak' | 'ditangguhkan'
    required String createdAt,
    String? alamat,
    String? noIdentitas,
    String? fotoIdentitas,
    String? vendorId, // untuk pengusaha
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// Catatan: AuthState ada di lib/core/auth/auth_state.dart (satu-satunya sumber).