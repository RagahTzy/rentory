// lib/core/utils/validation_utils.dart

/// Validate email
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) return 'Email wajib diisi';
  final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!regex.hasMatch(value)) return 'Format email tidak valid';
  return null;
}

/// Validate password
String? validatePassword(String? value, {int minLength = 6}) {
  if (value == null || value.isEmpty) return 'Password wajib diisi';
  if (value.length < minLength) return 'Password minimal $minLength karakter';
  return null;
}

/// Validate confirm password
String? validateConfirmPassword(String? value, String password) {
  if (value == null || value.isEmpty) return 'Konfirmasi password wajib diisi';
  if (value != password) return 'Password tidak cocok';
  return null;
}

/// Validate required field
String? validateRequired(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) return '$fieldName wajib diisi';
  return null;
}

/// Validate phone number (Indonesia)
String? validatePhone(String? value) {
  if (value == null || value.isEmpty) return 'Nomor HP wajib diisi';
  final cleaned = value.replaceAll(RegExp(r'[^0-9]'), '');
  if (cleaned.length < 10 || cleaned.length > 13) return 'Nomor HP tidak valid';
  if (!cleaned.startsWith('08') && !cleaned.startsWith('628')) return 'Nomor HP harus diawali 08 atau 628';
  return null;
}

/// Validate price
String? validatePrice(String? value) {
  if (value == null || value.isEmpty) return 'Harga wajib diisi';
  final numVal = int.tryParse(value.replaceAll(RegExp(r'[^0-9]'), ''));
  if (numVal == null || numVal <= 0) return 'Harga harus angka positif';
  return null;
}

/// Validate stock
String? validateStock(String? value) {
  if (value == null || value.isEmpty) return 'Stok wajib diisi';
  final numVal = int.tryParse(value);
  if (numVal == null || numVal < 0) return 'Stok harus angka >= 0';
  return null;
}

/// Validate coordinate
String? validateCoordinate(String? value, {required bool isLatitude}) {
  if (value == null || value.isEmpty) return 'Koordinat wajib diisi';
  final numVal = double.tryParse(value);
  if (numVal == null) return 'Koordinat harus angka';
  if (isLatitude) {
    if (numVal < -90 || numVal > 90) return 'Latitude harus -90 sampai 90';
  } else {
    if (numVal < -180 || numVal > 180) return 'Longitude harus -180 sampai 180';
  }
  return null;
}

/// Validate bank account number
String? validateBankAccount(String? value) {
  if (value == null || value.isEmpty) return 'Nomor rekening wajib diisi';
  final cleaned = value.replaceAll(RegExp(r'[^0-9]'), '');
  if (cleaned.length < 10 || cleaned.length > 20) return 'Nomor rekening tidak valid';
  return null;
}
