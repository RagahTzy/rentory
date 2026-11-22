// lib/core/constants/rental_catalog.dart
//
// TAMBAHAN khusus aplikasi sewa yang TIDAK ADA di DummyJSON.
// Data produk (nama, deskripsi, harga barang, stok, foto, rating) tetap 100%
// dari API https://dummyjson.com/products; file ini hanya mengatur:
//   1. Kategori DummyJSON mana yang disewakan (groceries, kosmetik, dll tidak).
//   2. Toko (vendor_mock.dart) yang menyewakan tiap kategori.
//   3. Rumus tarif sewa (Rp/hari) dari harga barang (USD).
//   4. Aturan khusus sewa per kategori.

class RentalCategory {
  final String vendorId;
  final String label; // nama kategori versi Indonesia
  final String? aturanKhusus;
  const RentalCategory({required this.vendorId, required this.label, this.aturanKhusus});
}

class RentalCatalog {
  /// Kategori DummyJSON (slug) yang disewakan → toko pemilik & label.
  static const Map<String, RentalCategory> categories = {
    'smartphones': RentalCategory(vendorId: 'vnd_001', label: 'Smartphone'),
    'tablets': RentalCategory(vendorId: 'vnd_001', label: 'Tablet'),
    'mobile-accessories': RentalCategory(vendorId: 'vnd_001', label: 'Aksesoris Gadget'),
    'sports-accessories': RentalCategory(vendorId: 'vnd_002', label: 'Olahraga & Outdoor'),
    'sunglasses': RentalCategory(vendorId: 'vnd_002', label: 'Kacamata Outdoor'),
    'laptops': RentalCategory(
      vendorId: 'vnd_003',
      label: 'Laptop',
      aturanKhusus: 'Dilarang meng-install ulang sistem operasi. Kerusakan layar ditanggung penyewa.',
    ),
    'vehicle': RentalCategory(
      vendorId: 'vnd_004',
      label: 'Mobil',
      aturanKhusus: 'Wajib menunjukkan SIM A & KTP asli saat pengambilan. BBM ditanggung penyewa.',
    ),
    'motorcycle': RentalCategory(
      vendorId: 'vnd_004',
      label: 'Motor',
      aturanKhusus: 'Wajib menunjukkan SIM C & KTP asli saat pengambilan. Helm disediakan 2 buah.',
    ),
  };

  /// Kurs untuk mengubah harga barang DummyJSON (USD) ke Rupiah.
  static const int kursUsd = 16000;

  /// Tarif sewa per hari = 1% dari harga barang (dibulatkan ke Rp1.000).
  static const double tarifHarianPersen = 1;
  static const int tarifHarianMinimum = 10000;

  /// Sewa mingguan = 6x tarif harian (gratis 1 hari).
  static const int hariBayarPerMinggu = 6;

  static bool isRentable(String category) => categories.containsKey(category);

  static String labelFor(String category) => categories[category]?.label ?? category;

  static int hargaPerHari(num hargaBarangUsd) {
    final rupiah = hargaBarangUsd * kursUsd * tarifHarianPersen / 100;
    final dibulatkan = (rupiah / 1000).round() * 1000;
    return dibulatkan < tarifHarianMinimum ? tarifHarianMinimum : dibulatkan;
  }
}
