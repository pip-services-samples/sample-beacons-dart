import 'package:sample_beacons/src/clients/version1/BeaconsMockClientV1.dart';
import 'package:test/test.dart';

import './BeaconsClientV1Fixture.dart';

void main() {
  group('BeaconsMockClientV1', () {
    late BeaconsMockClientV1 client;
    late BeaconsClientV1Fixture fixture;

    setUp(() async {
      client = BeaconsMockClientV1();
      fixture = BeaconsClientV1Fixture(client);
    });

    test('CRUD Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Calculate Positions', () async {
      await fixture.testCalculatePosition();
    });
  });
}
