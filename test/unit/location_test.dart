import 'package:flutter_test/flutter_test.dart';

import '../../lib/models/location.dart';

void main() {
  test('Locations can be fetched', () {
    final l = Location.fetchAll();

    expect(l.length, greaterThan(0));
  });

  test('Locations can be fetched by ID', () {
    final locations = Location.fetchAll();

    for (Location l in locations) {
      final fetched = Location.fetchById(l.id);
      expect(fetched, isNotNull);
      expect(fetched!.id, equals(l.id));
    }
  });
}
