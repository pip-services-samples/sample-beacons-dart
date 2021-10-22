import 'package:sample_beacons/src/persistence/persistence.dart';
import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import './BeaconsPersistenceFixture.dart';

void main() {
  group('BeaconsFilePersistence', () {
    late BeaconsFilePersistence persistence;
    late BeaconsPersistenceFixture fixture;

    setUp(() async {
      persistence = BeaconsFilePersistence();
      persistence.configure(
          ConfigParams.fromTuples(['path', './data/beacons.test.json']));

      fixture = BeaconsPersistenceFixture(persistence);

      await persistence.open(null);
      await persistence.clear(null);
    });

    tearDown(() async {
      await persistence.close(null);
    });

    test('CRUD Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Get with Filters', () async {
      await fixture.testGetWithFilters();
    });
  });
}
