import 'iPhones.dart';
import 'iPads.dart';
import 'samsungs.dart';
import 'samsungs_tabs.dart';

export 'iPhones.dart';
export 'iPads.dart';
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
