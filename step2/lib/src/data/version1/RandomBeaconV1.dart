import 'package:pip_services3_commons/pip_services3_commons.dart';

import 'data.dart';

class RandomBeaconV1 {
  static String nextBeaconType() {
    return RandomArray.pick([
      BeaconTypeV1.altBeacon,
      BeaconTypeV1.eddyStoneUdi,
      BeaconTypeV1.unknown,
      BeaconTypeV1.iBeacon
    ])!;
  }

  static Map<String, dynamic> nextBeaconCenter() {
    return {
      'type': 'Point',
      'coordinates': [
        RandomInteger.nextInteger(1, 1000),
        RandomInteger.nextInteger(1, 1000)
      ]
    };
  }

  static BeaconV1 nextBeacon() {
    var beacon = BeaconV1();
    beacon.type = RandomBeaconV1.nextBeaconType();
    beacon.radius = RandomDouble.nextDouble(1, 1000);
    beacon.udi = RandomArray.pick(['00001', '00002', '00003', '00004']);
    beacon.center = RandomBeaconV1.nextBeaconCenter();
    return beacon;
  }
}
