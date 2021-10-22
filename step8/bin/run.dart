import 'package:sample_beacons/src/container/BeaconsProcess.dart';

void main(List<String> argument) {
  try {
    var proc = BeaconsProcess();
    proc.configPath = './config/config.yml';
    proc.run(argument);
  } catch (ex) {
    print(ex);
  }
}
