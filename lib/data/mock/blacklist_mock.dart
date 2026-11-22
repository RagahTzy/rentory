// lib/data/mock/blacklist_mock.dart
import '../models/others.dart';

final List<VendorBlacklist> mockBlacklists = [
  VendorBlacklist(
    id: 'blk_001',
    vendorId: 'vnd_001',
    userId: 'usr_006',
    alasan: 'Serajing kembalikan barang, DP tidak dikembalikan',
    createdAt: '2024-10-15T10:00:00Z',
  ),
];

VendorBlacklist? getBlacklistById(String id) {
  try {
    return mockBlacklists.firstWhere((b) => b.id == id);
  } catch (_) {
    return null;
  }
}

List<VendorBlacklist> getBlacklistsByVendor(String vendorId) => 
    mockBlacklists.where((b) => b.vendorId == vendorId).toList();

bool isUserBlacklisted(String vendorId, String userId) => 
    mockBlacklists.any((b) => b.vendorId == vendorId && b.userId == userId);

void addToBlacklist(VendorBlacklist blacklist) {
  mockBlacklists.add(blacklist);
}

void removeFromBlacklist(String vendorId, String userId) {
  mockBlacklists.removeWhere((b) => b.vendorId == vendorId && b.userId == userId);
}
