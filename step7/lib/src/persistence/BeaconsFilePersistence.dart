import 'package:pip_services3_data/pip_services3_data.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import '../data/version1/BeaconV1.dart';
import './BeaconsMemoryPersistence.dart';

class BeaconsFilePersistence extends BeaconsMemoryPersistence {
  JsonFilePersister<BeaconV1> persister;

  BeaconsFilePersistence([String? path])
      : persister = JsonFilePersister<BeaconV1>(path),
        super() {
    loader = persister;
    saver = persister;
  }
  @override
  void configure(ConfigParams config) {
    super.configure(config);
    persister.configure(config);
  }
}
