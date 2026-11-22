// lib/data/mock/notification_mock.dart
import '../models/others.dart';

final List<Notification> mockNotifications = [
  Notification(
    id: 'notif_001',
    userId: 'usr_004',
    judul: 'Booking Dikonfirmasi',
    isi: 'Booking Canon EOS R6 untuk 1-3 Desember telah dikonfirmasi oleh Sewa Kamera Jaya.',
    tipe: 'booking',
    referenceId: 'bkg_001',
    isRead: false,
    createdAt: '2024-11-20T11:00:00Z',
  ),
  Notification(
    id: 'notif_002',
    userId: 'usr_002',
    judul: 'Booking Baru',
    isi: 'Anda menerima booking baru untuk Canon EOS R6 dari Andi Wijaya (1-3 Des).',
    tipe: 'booking',
    referenceId: 'bkg_001',
    isRead: false,
    createdAt: '2024-11-20T10:00:00Z',
  ),
  Notification(
    id: 'notif_003',
    userId: 'usr_004',
    judul: 'Pembayaran Diverifikasi',
    isi: 'DP sebesar Rp172.500 untuk booking Canon EOS R6 telah diverifikasi.',
    tipe: 'payment',
    referenceId: 'pay_001',
    isRead: true,
    createdAt: '2024-11-20T11:30:00Z',
  ),
];

List<Notification> getNotificationsByUser(String userId) => 
    mockNotifications.where((n) => n.userId == userId).toList();

List<Notification> getUnreadNotifications(String userId) => 
    mockNotifications.where((n) => n.userId == userId && !n.isRead).toList();

int getUnreadCount(String userId) => getUnreadNotifications(userId).length;

void addNotification(Notification notif) {
  mockNotifications.add(notif);
}

void markAsRead(String notificationId) {
  final index = mockNotifications.indexWhere((n) => n.id == notificationId);
  if (index != -1) {
    mockNotifications[index] = mockNotifications[index].copyWith(isRead: true);
  }
}

void markAllAsRead(String userId) {
  for (int i = 0; i < mockNotifications.length; i++) {
    if (mockNotifications[i].userId == userId && !mockNotifications[i].isRead) {
      mockNotifications[i] = mockNotifications[i].copyWith(isRead: true);
    }
  }
}

// Helper untuk create notifikasi umum
void createBookingNotification(String userId, String vendorId, String bookingId, String itemName, String status) {
  final messages = {
    'menunggu': ('Booking Baru', 'Anda menerima booking baru untuk $itemName.'),
    'dikonfirmasi': ('Booking Dikonfirmasi', 'Booking $itemName telah dikonfirmasi.'),
    'ditolak': ('Booking Ditolak', 'Booking $itemName ditolak oleh pengusaha.'),
    'dibatalkan': ('Booking Dibatalkan', 'Booking $itemName telah dibatalkan.'),
  };
  
  if (messages.containsKey(status)) {
    final (judul, isi) = messages[status]!;
    addNotification(Notification(
      id: 'notif_${DateTime.now().millisecondsSinceEpoch}',
      userId: status == 'menunggu' ? vendorId : userId,
      judul: judul,
      isi: isi,
      tipe: 'booking',
      referenceId: bookingId,
      isRead: false,
      createdAt: DateTime.now().toIso8601String(),
    ));
  }
}

void createPaymentNotification(String userId, String vendorId, String rentalId, String type) {
  final messages = {
    'dp_upload': ('Bukti DP Diupload', 'Penyewa mengupload bukti DP. Silakan verifikasi.'),
    'dp_verified': ('DP Diverifikasi', 'DP Anda telah diverifikasi oleh pengusaha.'),
    'pelunasan': ('Pelunasan', 'Tagihan pelunasan siap dibayar.'),
    'deposit_return': ('Deposit Dikembalikan', 'Deposit sewa telah dikembalikan.'),
  };
  
  if (messages.containsKey(type)) {
    final (judul, isi) = messages[type]!;
    addNotification(Notification(
      id: 'notif_${DateTime.now().millisecondsSinceEpoch}',
      userId: type == 'dp_upload' ? vendorId : userId,
      judul: judul,
      isi: isi,
      tipe: 'payment',
      referenceId: rentalId,
      isRead: false,
      createdAt: DateTime.now().toIso8601String(),
    ));
  }
}
