// lib/data/mock/dispute_mock.dart
import '../models/others.dart';

final List<Dispute> mockDisputes = [
  Dispute(
    id: 'dsp_001',
    rentalId: 'rnt_001',
    pelaporId: 'usr_004',
    deskripsi: 'Kamera dikembalikan tapi lensa ada debu di dalam. Saya tidak pernah buka lensa.',
    bukti: ['assets/disputes/dsp001_1.jpg'],
    status: 'diproses',
    createdAt: '2024-12-05T10:00:00Z',
  ),
];

Dispute? getDisputeById(String id) {
  try {
    return mockDisputes.firstWhere((d) => d.id == id);
  } catch (_) {
    return null;
  }
}

List<Dispute> getDisputesByRental(String rentalId) => 
    mockDisputes.where((d) => d.rentalId == rentalId).toList();

List<Dispute> getDisputesByPelapor(String pelaporId) => 
    mockDisputes.where((d) => d.pelaporId == pelaporId).toList();

List<Dispute> getAllDisputes() => mockDisputes;

void addDispute(Dispute dispute) {
  mockDisputes.add(dispute);
}

void updateDisputeStatus(String disputeId, String status, {String? keputusanAdmin}) {
  final index = mockDisputes.indexWhere((d) => d.id == disputeId);
  if (index != -1) {
    mockDisputes[index] = mockDisputes[index].copyWith(
      status: status,
      keputusanAdmin: keputusanAdmin,
      decidedAt: DateTime.now().toIso8601String(),
    );
  }
}
