// lib/data/mock/review_mock.dart
import '../models/others.dart';

final List<Review> mockReviews = [
  Review(
    id: 'rev_001',
    rentalId: 'rnt_001',
    userId: 'usr_004',
    vendorId: 'vnd_001',
    itemId: 'prd_001',
    rating: 5,
    komentar: 'Kamera bagus, lens tajam, pelayanan ramah. Proses sewa lancar.',
    balasanVendor: 'Terima kasih sudah sewa di toko kami! Semoga hasil fotonya bagus.',
    balasanAt: '2024-12-05T10:00:00Z',
    createdAt: '2024-12-04T15:00:00Z',
  ),
];

Review? getReviewById(String id) {
  try {
    return mockReviews.firstWhere((r) => r.id == id);
  } catch (_) {
    return null;
  }
}

List<Review> getReviewsByVendor(String vendorId) => 
    mockReviews.where((r) => r.vendorId == vendorId).toList();

List<Review> getReviewsByItem(String itemId) => 
    mockReviews.where((r) => r.itemId == itemId).toList();

List<Review> getReviewsByUser(String userId) => 
    mockReviews.where((r) => r.userId == userId).toList();

void addReview(Review review) {
  mockReviews.add(review);
}

void updateReviewReply(String reviewId, String balasan) {
  final index = mockReviews.indexWhere((r) => r.id == reviewId);
  if (index != -1) {
    mockReviews[index] = mockReviews[index].copyWith(
      balasanVendor: balasan,
      balasanAt: DateTime.now().toIso8601String(),
    );
  }
}

double calculateAverageRating(String vendorId) {
  final reviews = getReviewsByVendor(vendorId);
  if (reviews.isEmpty) return 0.0;
  final sum = reviews.fold(0, (s, r) => s + r.rating);
  return sum / reviews.length;
}
