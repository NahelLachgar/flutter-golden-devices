import 'dart:ui';
import 'package:flutter_golden_devices/constants/devices/iPads.dart';
import 'package:flutter_golden_devices/constants/devices/iPhones.dart';
import 'package:flutter_test/flutter_test.dart';

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
