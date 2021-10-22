import 'package:pip_services3_rpc/pip_services3_rpc.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

class BeaconsHttpServiceV1 extends CommandableHttpService {
  BeaconsHttpServiceV1() : super('v1/beacons') {
    dependencyResolver.put(
        'controller', Descriptor('beacons', 'controller', '*', '*', '1.0'));
  }
}
