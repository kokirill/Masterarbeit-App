import 'package:flutter/material.dart';

// Diese werden im Code als Referenz verwendet, um die Benutzeroberfläche flexibel zu gestalten
const num DESIG_WIDTH = 375;
const num DESIGN_HEIGHT = 812;
const num DESIGN_STATUS_BAR = 0;

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get h => ((this * _width) / DESIG_WIDTH);
  double get fSize => ((this * _width) / DESIG_WIDTH);
}

extension FormatExension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }

typedef ResponsiveBuild = Widget Function(
    BuildContext context, Orientation orientation, DeviceType deviceType);

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);

  // Erstellt das Widget, wenn sich die Ausrichtung ändert
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

// ignore_for_file: must_be_immutable
class SizeUtils {
  // BoxConstraints vom Gerät
  static late BoxConstraints boxConstraints;

  // Orientierung vom Gerät
  static late Orientation orienation;

  // Art des Gerätes
  static late DeviceType deviceType;

  // Höhe des Geräts
  static late double height;

  // Breite des Geräts
  static late double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orienation = currentOrientation;
    if (orienation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(defaultValue: DESIG_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: DESIG_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}
