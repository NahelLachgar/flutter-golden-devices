<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

This package includes different tabs and phone screen sizes that you can use for golden tests variants.
You can also create custom screen sizes with the class `FlutterGoldenDevice`.

Example: 
```dart
FlutterGoldenDevice('myPhone', 100, 1000);
```

This class extends `Size` so you can use ValueVariant<FlutterGoldenDevice> for golden test `variants` property

## Getting started
Add the package to your dev dependencies like this: 
```yaml
 flutter_golden_devices:
    git:
      url: https://github.com/NahelLachgar/flutter_golden_devices.git
      ref: main
```

## Usage

### Create a golden test

Example:
```dart
final sizeVariants = FlutterGoldenDevice.getVariant([
    FlutterGoldenIPhones.iphone15,
    FlutterGoldeniPads.iPadPro12_9,
    FlutterGoldenDevice('myPhone', 100, 1000);
]);

testWidgets(
    'My widget golden test',
    (tester) async {
      // Arrange your test
      await expectLater(
          find your widget,
          matchesGoldenFile(
            'path_to_the_golden_test_result/widget_name_${sizeVariants.currentValue?.name}.png'),
            );
    },
    variant: sizeVariants,
  );
```