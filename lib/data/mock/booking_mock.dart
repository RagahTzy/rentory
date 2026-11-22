// lib/data/mock/booking_mock.dart
import '../models/booking.dart';

final List<Booking> mockBookings = [
  Booking(
    id: 'bkg_001',
    userId: 'usr_004',
    vendorId: 'vnd_001',
    itemId: 'prd_001',
    qty: 1,
    tglMulai: '2024-12-01T09:00:00Z',
    tglSelesai: '2024-12-03T18:00:00Z',
    opsiPengambilan: 'ambil_di_toko',
    status: 'dikonfirmasi',
    totalEstimasi: 575000, // 2 hari x 250000 + 30% deposit
    dpDibayar: 172500,
    createdAt: '2024-11-20T10:00:00Z',
    confirmedAt: '2024-11-20T11:00:00Z',
  ),
  Booking(
    id: 'bkg_002',
    userId: 'usr_004',
    vendorId: 'vnd_002',
    itemId: 'prd_004',
    qty: 1,
    tglMulai: '2024-12-10T08:00:00Z',
    tglSelesai: '2024-12-12T17:00:00Z',
    opsiPengambilan: 'ambil_di_toko',
    status: 'menunggu',
    totalEstimasi: 200000, // 2 hari x 80000 + 25% deposit
    dpDibayar: 0,
    createdAt: '2024-11-22T14:00:00Z',
  ),
  Booking(
    id: 'bkg_003',
    userId: 'usr_006',
    vendorId: 'vnd_001',
    itemId: 'prd_002',
    qty: 1,
    tglMulai: '2024-11-25T10:00:00Z',
    tglSelesai: '2024-11-27T20:00:00Z',
    opsiPengambilan: 'diantar',
    alamatAntar: {'alamat': 'Jl. Dago No. 50', 'kota': 'Bandung', 'lat': -6.8850, 'lng': 107.6050},
    biayaAntarEstimasi: 25000,
    status: 'ditolak',
    alasanTolak: 'Barang sedang maintenance',
    totalEstimasi: 625000,
    dpDibayar: 0,
    createdAt: '2024-11-15T09:00:00Z',
    cancelledAt: '2024-11-15T10:00:00Z',
  ),
];

Booking? getBookingById(String id) {
  try {
    return mockBookings.firstWhere((b) => b.id == id);
  } catch (_) {
    return null;
  }
}

List<Booking> getBookingsByUser(String userId) => 
    mockBookings.where((b) => b.userId == userId).toList();

List<Booking> getBookingsByVendor(String vendorId) => 
    mockBookings.where((b) => b.vendorId == vendorId).toList();

List<Booking> getBookingsByStatus(String vendorId, String status) => 
    mockBookings.where((b) => b.vendorId == vendorId && b.status == status).toList();

void addBooking(Booking booking) {
  mockBookings.add(booking);
}

void updateBookingStatus(String bookingId, String status, {String? alasanTolak}) {
  final index = mockBookings.indexWhere((b) => b.id == bookingId);
  if (index != -1) {
    mockBookings[index] = mockBookings[index].copyWith(
      status: status,
      alasanTolak: alasanTolak,
      confirmedAt: status == 'dikonfirmasi' ? DateTime.now().toIso8601String() : mockBookings[index].confirmedAt,
      cancelledAt: status == 'dibatalkan' ? DateTime.now().toIso8601String() : mockBookings[index].cancelledAt,
    );
  }
}

void updateBookingDp(String bookingId, int dpDibayar) {
  final index = mockBookings.indexWhere((b) => b.id == bookingId);
  if (index != -1) {
    mockBookings[index] = mockBookings[index].copyWith(dpDibayar: dpDibayar);
  }
}
