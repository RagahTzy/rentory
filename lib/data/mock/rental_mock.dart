// lib/data/mock/rental_mock.dart
import '../models/booking.dart';
import '../models/others.dart';

final List<Rental> mockRentals = [
  Rental(
    id: 'rnt_001',
    bookingId: 'bkg_001',
    vendorId: 'vnd_001',
    userId: 'usr_004',
    tglMulai: '2024-12-01T09:00:00Z',
    jatuhTempo: '2024-12-03T18:00:00Z',
    totalBiayaSewa: 500000,
    diskon: 0,
    dendaTelat: 0,
    biayaGantiRugi: 0,
    deposit: 150000,
    biayaAntar: 0,
    status: 'aktif',
    createdAt: '2024-12-01T09:00:00Z',
  ),
];

final List<RentalItem> mockRentalItems = [
  RentalItem(
    id: 'rni_001',
    rentalId: 'rnt_001',
    itemId: 'prd_001',
    qty: 1,
    hargaSatuan: 250000,
    kondisiKeluar: {'lensa': 'bersih', 'body': 'mulus', 'sensor': 'bersih', 'baterai': '100%'},
    fotoKondisiKeluar: ['assets/rental/rnt001_keluar_1.jpg'],
    kondisiKembali: null,
    fotoKondisiKembali: null,
    biayaGantiRugi: 0,
  ),
];

final List<Extension> mockExtensions = [];

final List<Maintenance> mockMaintenances = [
  Maintenance(
    id: 'mnt_001',
    itemId: 'prd_009',
    deskripsi: 'Ganti lampu laser & kalibrasi warna',
    biaya: 2500000,
    tglMulai: '2024-11-20T00:00:00Z',
    tglSelesai: '2024-11-25T00:00:00Z',
    status: 'sedang',
    createdAt: '2024-11-18T10:00:00Z',
  ),
];

Rental? getRentalById(String id) {
  try {
    return mockRentals.firstWhere((r) => r.id == id);
  } catch (_) {
    return null;
  }
}

Rental? getRentalByBookingId(String bookingId) {
  try {
    return mockRentals.firstWhere((r) => r.bookingId == bookingId);
  } catch (_) {
    return null;
  }
}

List<Rental> getRentalsByUser(String userId) =>
    mockRentals.where((r) => r.userId == userId).toList();

List<Rental> getRentalsByVendor(String vendorId) =>
    mockRentals.where((r) => r.vendorId == vendorId).toList();

List<Rental> getActiveRentalsByVendor(String vendorId) =>
    mockRentals.where((r) => r.vendorId == vendorId && r.status == 'aktif').toList();

List<RentalItem> getRentalItems(String rentalId) =>
    mockRentalItems.where((ri) => ri.rentalId == rentalId).toList();

void addRental(Rental rental) {
  mockRentals.add(rental);
}

void addRentalItem(RentalItem item) {
  mockRentalItems.add(item);
}

void updateRentalStatus(String rentalId, String status, {String? tglKembaliAktual}) {
  final index = mockRentals.indexWhere((r) => r.id == rentalId);
  if (index != -1) {
    mockRentals[index] = mockRentals[index].copyWith(
      status: status,
      tglKembaliAktual: tglKembaliAktual ?? mockRentals[index].tglKembaliAktual,
      completedAt: status == 'selesai' ? DateTime.now().toIso8601String() : mockRentals[index].completedAt,
    );
  }
}

void updateRentalItemCondition(String rentalItemId, {
  Map<String, dynamic>? kondisiKembali,
  List<String>? fotoKondisiKembali,
  int? biayaGantiRugi,
}) {
  final index = mockRentalItems.indexWhere((ri) => ri.id == rentalItemId);
  if (index != -1) {
    mockRentalItems[index] = mockRentalItems[index].copyWith(
      kondisiKembali: kondisiKembali ?? mockRentalItems[index].kondisiKembali,
      fotoKondisiKembali: fotoKondisiKembali ?? mockRentalItems[index].fotoKondisiKembali,
      biayaGantiRugi: biayaGantiRugi ?? mockRentalItems[index].biayaGantiRugi,
    );
  }
}

void addExtension(Extension ext) {
  mockExtensions.add(ext);
}

List<Extension> getExtensionsByRental(String rentalId) =>
    mockExtensions.where((e) => e.rentalId == rentalId).toList();

void updateExtensionStatus(String extensionId, String status) {
  final index = mockExtensions.indexWhere((e) => e.id == extensionId);
  if (index != -1) {
    mockExtensions[index] = mockExtensions[index].copyWith(
      status: status,
      decidedAt: DateTime.now().toIso8601String(),
    );
  }
}

List<Maintenance> getMaintenancesByItem(String itemId) =>
    mockMaintenances.where((m) => m.itemId == itemId).toList();

List<Maintenance> getMaintenancesByVendor(String vendorId) {
  // Need to join with products to get vendorId
  // Simplified: return all for now
  return mockMaintenances;
}

void addMaintenance(Maintenance m) {
  mockMaintenances.add(m);
}

void updateMaintenanceStatus(String maintenanceId, String status) {
  final index = mockMaintenances.indexWhere((m) => m.id == maintenanceId);
  if (index != -1) {
    mockMaintenances[index] = mockMaintenances[index].copyWith(status: status);
  }
}
