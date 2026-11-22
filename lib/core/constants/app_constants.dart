// lib/core/constants/app_constants.dart

class AppConstants {
  static const String appName = 'Rentory';
  static const String appVersion = '0.1.0';
  
  // Roles
  static const String rolePenyewa = 'penyewa';
  static const String rolePengusaha = 'pengusaha';
  static const String roleAdmin = 'admin';
  
  // Status
  static const String statusAktif = 'aktif';
  static const String statusMenunggu = 'menunggu';
  static const String statusDitolak = 'ditolak';
  static const String statusDitangguhkan = 'ditangguhkan';
  static const String statusTersedia = 'tersedia';
  static const String statusDisewa = 'disewa';
  static const String statusDibooking = 'dibooking';
  static const String statusMaintenance = 'maintenance';
  static const String statusNonaktif = 'nonaktif';
  
  // Booking status
  static const String bookingMenunggu = 'menunggu';
  static const String bookingDikonfirmasi = 'dikonfirmasi';
  static const String bookingDitolak = 'ditolak';
  static const String bookingDibatalkan = 'dibatalkan';
  
  // Rental status
  static const String rentalAktif = 'aktif';
  static const String rentalSelesai = 'selesai';
  static const String rentalDibatalkan = 'dibatalkan';
  static const String rentalSengketa = 'sengketa';
  
  // Payment
  static const String paymentDP = 'dp';
  static const String paymentPelunasan = 'pelunasan';
  static const String paymentDenda = 'denda';
  static const String paymentDepositKembali = 'deposit_kembali';
  static const String paymentBiayaAntar = 'biaya_antar';
  
  // Payment verification
  static const String payPending = 'pending';
  static const String payVerified = 'verified';
  static const String payRejected = 'rejected';
  
  // Opsi pengambilan
  static const String opsiAmbilDiToko = 'ambil_di_toko';
  static const String opsiDiantar = 'diantar';
  
  // Default values
  static const int defaultRadiusKm = 10;
  static const int defaultDepositPersen = 30;
  static const int maxImagesPerProduct = 5;
  
  // Storage keys
  static const String keyAuthToken = 'auth_token';
  static const String keyUserId = 'user_id';
  static const String keyUserRole = 'user_role';
  static const String keyVendorId = 'vendor_id';
  static const String keyThemeMode = 'theme_mode';
}
