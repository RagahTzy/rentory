// lib/core/utils/location_utils.dart
import 'dart:math';

/// Haversine formula untuk hitung jarak antara 2 koordinat (dalam km)
double haversineKm(double lat1, double lng1, double lat2, double lng2) {
  const R = 6371.0; // Earth radius in km
  final dLat = _deg2rad(lat2 - lat1);
  final dLng = _deg2rad(lng2 - lng1);
  final a = sin(dLat / 2) * sin(dLat / 2) +
      cos(_deg2rad(lat1)) * cos(_deg2rad(lat2)) *
      sin(dLng / 2) * sin(dLng / 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return R * c;
}

double _deg2rad(double deg) => deg * pi / 180;

/// Format jarak untuk display
String formatDistance(double km) {
  if (km < 1) {
    return '${(km * 1000).round()} m';
  } else if (km < 10) {
    return '${km.toStringAsFixed(1)} km';
  } else {
    return '${km.round()} km';
  }
}

/// Cek apakah dalam radius
bool isWithinRadius(double userLat, double userLng, double targetLat, double targetLng, double radiusKm) {
  return haversineKm(userLat, userLng, targetLat, targetLng) <= radiusKm;
}

/// Sort vendors by distance
void sortByDistance(List<dynamic> vendors, double userLat, double userLng, 
    double Function(dynamic) getLat, double Function(dynamic) getLng) {
  vendors.sort((a, b) => haversineKm(userLat, userLng, getLat(a), getLng(a))
      .compareTo(haversineKm(userLat, userLng, getLat(b), getLng(b))));
}
