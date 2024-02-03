import 'iphones.dart';
import 'ipads.dart';
import 'samsungs.dart';
import 'samsungs_tabs.dart';

export 'iphones.dart';
export 'ipads.dart';
export 'samsungs.dart';
export 'samsungs_tabs.dart';

class FlutterGoldenDevices {
  static final devices = [
    ...FlutterGoldeniPhones.list,
    ...FlutterGoldeniPads.list,
    ...FlutterGoldenSamsungs.list,
    ...FlutterGoldenSamsungTabs.list,
  ];
}
