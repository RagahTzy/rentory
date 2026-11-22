import 'package:flutter_test/flutter_test.dart';
import 'package:rentory/core/utils/location_utils.dart';

void main() {
  test('haversineKm: titik yang sama = 0 km', () {
    expect(haversineKm(-6.9175, 107.6191, -6.9175, 107.6191), 0);
  });

  test('haversineKm: Bandung - Jakarta sekitar 120 km', () {
    final km = haversineKm(-6.9175, 107.6191, -6.2088, 106.8456);
    expect(km, inInclusiveRange(110, 130));
  });

  test('formatDistance', () {
    expect(formatDistance(0.45), '450 m');
    expect(formatDistance(3.26), '3.3 km');
    expect(formatDistance(12.4), '12 km');
  });
}
