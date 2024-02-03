import 'dart:ui';

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
}
