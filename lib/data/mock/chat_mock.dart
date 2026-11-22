// lib/data/mock/chat_mock.dart
import '../models/others.dart';

final List<Message> mockMessages = [
  Message(
    id: 'msg_001',
    pengirimId: 'usr_004',
    penerimaId: 'usr_002',
    rentalId: 'rnt_001',
    isi: 'Halo, apakah kamera Canon R6 masih tersedia untuk 1-3 Desember?',
    createdAt: '2024-11-19T14:00:00Z',
    isRead: true,
  ),
  Message(
    id: 'msg_002',
    pengirimId: 'usr_002',
    penerimaId: 'usr_004',
    rentalId: 'rnt_001',
    isi: 'Halo, tersedia ya. Harga 250rb/hari, deposit 30%. Mau booking?',
    createdAt: '2024-11-19T14:05:00Z',
    isRead: true,
  ),
  Message(
    id: 'msg_003',
    pengirimId: 'usr_004',
    penerimaId: 'usr_002',
    rentalId: 'rnt_001',
    isi: 'Iya mau, nanti saya booking via aplikasi. Terima kasih!',
    createdAt: '2024-11-19T14:10:00Z',
    isRead: false,
  ),
];

List<Message> getMessagesBetweenUsers(String userId1, String userId2, {String? rentalId}) {
  var messages = mockMessages.where((m) => 
    (m.pengirimId == userId1 && m.penerimaId == userId2) ||
    (m.pengirimId == userId2 && m.penerimaId == userId1)
  ).toList();
  
  if (rentalId != null) {
    messages = messages.where((m) => m.rentalId == rentalId || m.bookingId == rentalId).toList();
  }
  
  messages.sort((a, b) => a.createdAt.compareTo(b.createdAt));
  return messages;
}

List<Message> getMessagesForUser(String userId) {
  return mockMessages.where((m) => m.pengirimId == userId || m.penerimaId == userId).toList();
}

List<Map<String, dynamic>> getChatRooms(String userId) {
  final userMessages = getMessagesForUser(userId);
  final Map<String, List<Message>> grouped = {};
  
  for (final msg in userMessages) {
    final otherId = msg.pengirimId == userId ? msg.penerimaId : msg.pengirimId;
    final key = msg.rentalId ?? msg.bookingId ?? otherId;
    grouped.putIfAbsent(key, () => []).add(msg);
  }
  
  return grouped.entries.map((e) {
    final lastMsg = e.value.last;
    final otherId = lastMsg.pengirimId == userId ? lastMsg.penerimaId : lastMsg.pengirimId;
    final unreadCount = e.value.where((m) => m.penerimaId == userId && !m.isRead).length;
    return {
      'chatKey': e.key,
      'otherUserId': otherId,
      'lastMessage': lastMsg.isi,
      'lastMessageTime': lastMsg.createdAt,
      'unreadCount': unreadCount,
      'rentalId': lastMsg.rentalId,
      'bookingId': lastMsg.bookingId,
    };
  }).toList();
}

void addMessage(Message message) {
  mockMessages.add(message);
}

void markAsRead(String userId, String otherId, {String? rentalId}) {
  for (final msg in mockMessages) {
    if (msg.penerimaId == userId && msg.pengirimId == otherId && !msg.isRead) {
      if (rentalId == null || msg.rentalId == rentalId || msg.bookingId == rentalId) {
        final index = mockMessages.indexOf(msg);
        mockMessages[index] = msg.copyWith(isRead: true);
      }
    }
  }
}
