import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';

import '../constants/devices/ipads.dart';
import '../constants/devices/iphones.dart';

/// Represents a device screen size
///
/// Example:
/// ```dart
/// const iPhone12 = FlutterGoldenDevice('iphone12', 390, 844);
/// ```
class FlutterGoldenDevice extends Size {
  const FlutterGoldenDevice(this.name, double width, double height)
      : super(width, height);
  final String name;

  static ValueVariant<FlutterGoldenDevice> getVariant(
          List<FlutterGoldenDevice> devices) =>
      ValueVariant(devices.toSet());
}

final testVariants = FlutterGoldenDevice.getVariant([
  FlutterGoldeniPhones.iphone15,
  FlutterGoldeniPads.iPadPro12_9,
]);
