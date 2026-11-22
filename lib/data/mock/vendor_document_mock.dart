// lib/data/mock/vendor_document_mock.dart
import '../models/others.dart';

final List<VendorDocument> mockVendorDocuments = [
  VendorDocument(
    id: 'vdoc_001',
    vendorId: 'vnd_001',
    jenis: 'ktp',
    filePath: 'assets/vendor_docs/vnd001_ktp.jpg',
    status: 'verified',
    createdAt: '2024-01-15T08:30:00Z',
  ),
  VendorDocument(
    id: 'vdoc_002',
    vendorId: 'vnd_001',
    jenis: 'selfie',
    filePath: 'assets/vendor_docs/vnd001_selfie.jpg',
    status: 'verified',
    createdAt: '2024-01-15T08:30:00Z',
  ),
  VendorDocument(
    id: 'vdoc_003',
    vendorId: 'vnd_002',
    jenis: 'ktp',
    filePath: 'assets/vendor_docs/vnd002_ktp.jpg',
    status: 'verified',
    createdAt: '2024-02-20T11:00:00Z',
  ),
  VendorDocument(
    id: 'vdoc_004',
    vendorId: 'vnd_002',
    jenis: 'selfie',
    filePath: 'assets/vendor_docs/vnd002_selfie.jpg',
    status: 'verified',
    createdAt: '2024-02-20T11:00:00Z',
  ),
  VendorDocument(
    id: 'vdoc_005',
    vendorId: 'vnd_003',
    jenis: 'ktp',
    filePath: 'assets/vendor_docs/vnd003_ktp.jpg',
    status: 'pending',
    createdAt: '2024-03-15T14:30:00Z',
  ),
  VendorDocument(
    id: 'vdoc_006',
    vendorId: 'vnd_003',
    jenis: 'selfie',
    filePath: 'assets/vendor_docs/vnd003_selfie.jpg',
    status: 'pending',
    createdAt: '2024-03-15T14:30:00Z',
  ),
  VendorDocument(
    id: 'vdoc_007',
    vendorId: 'vnd_004',
    jenis: 'ktp',
    filePath: 'assets/vendor_docs/vnd004_ktp.jpg',
    status: 'verified',
    createdAt: '2024-04-01T11:30:00Z',
  ),
  VendorDocument(
    id: 'vdoc_008',
    vendorId: 'vnd_004',
    jenis: 'selfie',
    filePath: 'assets/vendor_docs/vnd004_selfie.jpg',
    status: 'verified',
    createdAt: '2024-04-01T11:30:00Z',
  ),
];

List<VendorDocument> getDocumentsByVendor(String vendorId) => 
    mockVendorDocuments.where((d) => d.vendorId == vendorId).toList();

List<VendorDocument> getPendingDocuments() => 
    mockVendorDocuments.where((d) => d.status == 'pending').toList();

void addVendorDocument(VendorDocument doc) {
  mockVendorDocuments.add(doc);
}

void updateDocumentStatus(String documentId, String status) {
  final index = mockVendorDocuments.indexWhere((d) => d.id == documentId);
  if (index != -1) {
    mockVendorDocuments[index] = mockVendorDocuments[index].copyWith(status: status);
  }
}
