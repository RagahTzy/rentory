// lib/data/mock/vendor_mock.dart
//
// Data toko — TAMBAHAN aplikasi karena DummyJSON tidak punya konsep toko,
// rekening, koordinat, maupun opsi pengambilan. `userId` = id user DummyJSON
// pemilik toko; akun yang memiliki toko otomatis berperan sebagai pengusaha.
import 'dart:math';
import '../models/vendor.dart';

final List<Vendor> mockVendors = [
  Vendor(
    id: 'vnd_001',
    userId: '6', // DummyJSON: oliviaw
    namaToko: 'Sewa Kamera Jaya',
    deskripsi: 'Penyewaan kamera & lens profesional. Melayani prewedding, event, corporate video, live streaming. Berpengalaman 5+ tahun.',
    logo: 'assets/logos/kamera_jaya.png',
    alamat: 'Jl. Cihampelas No. 123',
    kota: 'Bandung',
    latitude: -6.9147,
    longitude: 107.6098,
    kontak: '0812-3456-7890',
    jamOperasional: '09:00-21:00',
    statusVerifikasi: 'aktif',
    rekening: BankAccount(
      bank: 'BCA',
      nomorRekening: '1234567890',
      atasNama: 'Olivia Wilson',
    ),
    tarifDendaPerHari: 50000,
    persenDeposit: 30,
    kebijakanBatal: 'Bebas 24 jam sebelum sewa, setelah itu DP tidak dikembalikan',
    opsiPengambilan: ['ambil_di_toko', 'diantar'],
    biayaAntarPerKm: 5000,
    radiusAntarMaxKm: 15,
    ratingRata: 4.8,
    totalReview: 127,
    createdAt: '2024-01-15T08:00:00Z',
  ),
  Vendor(
    id: 'vnd_002',
    userId: '7', // DummyJSON: alexanderj
    namaToko: 'Tenda & Outdoor Bandung',
    deskripsi: 'Spesialis sewa peralatan camping & gunung. Tenda, sleeping bag, carrier, kompor, mattress. Ready untuk gunung 3000mdpl+.',
    logo: 'assets/logos/tenda_outdoor.png',
    alamat: 'Jl. Setiabudi No. 45',
    kota: 'Bandung',
    latitude: -6.8956,
    longitude: 107.6189,
    kontak: '0821-9876-5432',
    jamOperasional: '08:00-20:00',
    statusVerifikasi: 'aktif',
    rekening: BankAccount(
      bank: 'Mandiri',
      nomorRekening: '9876543210',
      atasNama: 'Alexander Jones',
    ),
    tarifDendaPerHari: 25000,
    persenDeposit: 25,
    kebijakanBatal: 'Bebas 48 jam sebelum sewa',
    opsiPengambilan: ['ambil_di_toko'],
    biayaAntarPerKm: 0,
    radiusAntarMaxKm: 0,
    ratingRata: 4.5,
    totalReview: 89,
    createdAt: '2024-02-20T10:30:00Z',
  ),
  Vendor(
    id: 'vnd_003',
    userId: '8', // DummyJSON: avat
    namaToko: 'TechRent Bandung',
    deskripsi: 'Sewa elektronik premium: MacBook, drone, proyektor, speaker, VR. Cocok event, presentasi, production. Termasuk setup teknisi.',
    logo: 'assets/logos/techrent.png',
    alamat: 'Jl. Sukajadi No. 88',
    kota: 'Bandung',
    latitude: -6.9023,
    longitude: 107.6045,
    kontak: '0814-5678-9012',
    jamOperasional: '10:00-22:00',
    statusVerifikasi: 'menunggu',
    rekening: BankAccount(
      bank: 'BNI',
      nomorRekening: '5555666677',
      atasNama: 'Ava Taylor',
    ),
    tarifDendaPerHari: 100000,
    persenDeposit: 50,
    kebijakanBatal: 'Bebas 72 jam sebelum sewa, 50% DP dikembalikan 24-72 jam',
    opsiPengambilan: ['ambil_di_toko', 'diantar'],
    biayaAntarPerKm: 8000,
    radiusAntarMaxKm: 20,
    ratingRata: 0.0,
    totalReview: 0,
    createdAt: '2024-03-15T14:00:00Z',
  ),
  Vendor(
    id: 'vnd_004',
    userId: '9', // DummyJSON: ethanm
    namaToko: 'Roda Bebas Rental',
    deskripsi: 'Sewa kendaraan: motor matic, mobil MPV, sepeda gunung. STNK lengkap, asuransi, helmet disediakan. Bisa antar jemput.',
    logo: 'assets/logos/roda_bebas.png',
    alamat: 'Jl. Buah Batu No. 210',
    kota: 'Bandung',
    latitude: -6.9321,
    longitude: 107.6234,
    kontak: '0815-6789-0123',
    jamOperasional: '07:00-23:00',
    statusVerifikasi: 'aktif',
    rekening: BankAccount(
      bank: 'BRI',
      nomorRekening: '8888999900',
      atasNama: 'Ethan Martinez',
    ),
    tarifDendaPerHari: 75000,
    persenDeposit: 20,
    kebijakanBatal: 'Bebas 12 jam sebelum sewa',
    opsiPengambilan: ['ambil_di_toko', 'diantar'],
    biayaAntarPerKm: 3000,
    radiusAntarMaxKm: 10,
    ratingRata: 4.3,
    totalReview: 156,
    createdAt: '2024-04-01T11:00:00Z',
  ),
];

// Helper functions
Vendor? getVendorById(String id) {
  try {
    return mockVendors.firstWhere((v) => v.id == id);
  } catch (_) {
    return null;
  }
}

Vendor? getVendorByUserId(String userId) {
  try {
    return mockVendors.firstWhere((v) => v.userId == userId);
  } catch (_) {
    return null;
  }
}

List<Vendor> getActiveVendors() => mockVendors.where((v) => v.isActive).toList();

List<Vendor> getVendorsByKota(String kota) => 
    mockVendors.where((v) => v.kota.toLowerCase() == kota.toLowerCase() && v.isActive).toList();

List<Vendor> getNearbyVendors(double userLat, double userLng, {double radiusKm = 10}) {
  return mockVendors
      .where((v) => v.isActive && _haversine(userLat, userLng, v.latitude, v.longitude) <= radiusKm)
      .toList()
    ..sort((a, b) => _haversine(userLat, userLng, a.latitude, a.longitude)
        .compareTo(_haversine(userLat, userLng, b.latitude, b.longitude)));
}

double _haversine(double lat1, double lng1, double lat2, double lng2) {
  const R = 6371.0; // Earth radius in km
  final dLat = _deg2rad(lat2 - lat1);
  final dLng = _deg2rad(lng2 - lng1);
  final a = sin(dLat / 2) * sin(dLat / 2) +
      cos(_deg2rad(lat1)) * cos(_deg2rad(lat2)) * sin(dLng / 2) * sin(dLng / 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return R * c;
}

double _deg2rad(double deg) => deg * pi / 180;
