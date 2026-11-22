// lib/data/mock/payment_mock.dart
import '../models/booking.dart';
import 'rental_mock.dart';

final List<Payment> mockPayments = [
  Payment(
    id: 'pay_001',
    rentalId: 'rnt_001',
    jumlah: 172500,
    jenis: 'dp',
    metode: 'transfer',
    buktiPath: 'assets/payments/pay001_bukti.jpg',
    statusVerifikasi: 'verified',
    verifiedBy: 'vnd_001',
    verifiedAt: '2024-11-20T11:30:00Z',
    createdAt: '2024-11-20T10:30:00Z',
  ),
];

Payment? getPaymentById(String id) {
  try {
    return mockPayments.firstWhere((p) => p.id == id);
  } catch (_) {
    return null;
  }
}

List<Payment> getPaymentsByRental(String rentalId) =>
    mockPayments.where((p) => p.rentalId == rentalId).toList();

List<Payment> getPaymentsByVendor(String vendorId) {
  // Join via rental
  final rentalIds = mockRentals.where((r) => r.vendorId == vendorId).map((r) => r.id).toSet();
  return mockPayments.where((p) => rentalIds.contains(p.rentalId)).toList();
}

void addPayment(Payment payment) {
  mockPayments.add(payment);
}

void updatePaymentVerification(String paymentId, String status, {String? verifiedBy}) {
  final index = mockPayments.indexWhere((p) => p.id == paymentId);
  if (index != -1) {
    mockPayments[index] = mockPayments[index].copyWith(
      statusVerifikasi: status,
      verifiedBy: verifiedBy ?? mockPayments[index].verifiedBy,
      verifiedAt: DateTime.now().toIso8601String(),
    );
  }
}

int calculateTotalPaid(String rentalId) {
  return mockPayments
      .where((p) => p.rentalId == rentalId && p.statusVerifikasi == 'verified')
      .fold(0, (sum, p) => sum + p.jumlah);
}

int calculateDepositReturn(Rental rental, List<RentalItem> items) {
  int totalGantiRugi = items.fold(0, (sum, i) => sum + i.biayaGantiRugi);
  int depositReturn = rental.deposit - rental.dendaTelat - totalGantiRugi;
  return depositReturn > 0 ? depositReturn : 0;
}
