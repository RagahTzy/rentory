// lib/core/utils/format_utils.dart
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

/// Initialize Indonesian locale
Future<void> initFormatUtils() async {
  await initializeDateFormatting('id_ID', null);
  Intl.defaultLocale = 'id_ID';
}

/// Format currency IDR
String formatCurrency(int amount, {bool withSymbol = true}) {
  final formatter = NumberFormat.currency(
    locale: 'id_ID',
    symbol: withSymbol ? 'Rp ' : '',
    decimalDigits: 0,
  );
  return formatter.format(amount);
}

/// Format currency short (1.5jt, 250rb)
String formatCurrencyShort(int amount) {
  if (amount >= 1000000000) {
    return '${(amount / 1000000000).toStringAsFixed(1)}M';
  } else if (amount >= 1000000) {
    return '${(amount / 1000000).toStringAsFixed(amount % 1000000 == 0 ? 0 : 1)}jt';
  } else if (amount >= 1000) {
    return '${(amount / 1000).toStringAsFixed(amount % 1000 == 0 ? 0 : 1)}rb';
  }
  return amount.toString();
}

/// Format date
String formatDate(DateTime date, {String pattern = 'dd MMM yyyy'}) {
  return DateFormat(pattern, 'id_ID').format(date);
}

/// Format date time
String formatDateTime(DateTime date, {String pattern = 'dd MMM yyyy HH:mm'}) {
  return DateFormat(pattern, 'id_ID').format(date);
}

/// Format time only
String formatTime(DateTime date, {String pattern = 'HH:mm'}) {
  return DateFormat(pattern, 'id_ID').format(date);
}

/// Format relative time (e.g., "2 hari lalu", "5 menit lagi")
String formatRelativeTime(DateTime date) {
  final now = DateTime.now();
  final diff = date.difference(now).abs();
  
  if (diff.inDays > 0) {
    return '${diff.inDays} hari ${date.isAfter(now) ? 'lagi' : 'lalu'}';
  } else if (diff.inHours > 0) {
    return '${diff.inHours} jam ${date.isAfter(now) ? 'lagi' : 'lalu'}';
  } else if (diff.inMinutes > 0) {
    return '${diff.inMinutes} menit ${date.isAfter(now) ? 'lagi' : 'lalu'}';
  } else {
    return 'Baru saja';
  }
}

/// Parse ISO8601 string to DateTime
DateTime? parseDateTime(String? isoString) {
  if (isoString == null || isoString.isEmpty) return null;
  try {
    return DateTime.parse(isoString);
  } catch (_) {
    return null;
  }
}

/// Format duration (e.g., "2 hari 3 jam")
String formatDuration(DateTime start, DateTime end) {
  final diff = end.difference(start);
  final days = diff.inDays;
  final hours = diff.inHours % 24;
  final minutes = diff.inMinutes % 60;
  
  final parts = <String>[];
  if (days > 0) parts.add('$days hari');
  if (hours > 0) parts.add('$hours jam');
  if (minutes > 0 && days == 0) parts.add('$minutes menit');
  
  return parts.join(' ');
}

/// Calculate rental days (ceil)
int calculateRentalDays(DateTime start, DateTime end) {
  final diff = end.difference(start);
  final days = diff.inDays;
  final hours = diff.inHours % 24;
  return hours > 0 ? days + 1 : days;
}
