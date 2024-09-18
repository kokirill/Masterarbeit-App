import 'package:flutter/material.dart';
import '../core/app_export.dart';

// Eine Klasse, die vordefinierte Schaltflächenstile anbietet, um das Aussehen von Schaltflächen zu verändern
class CustomButtonStyle {
  // text schaltfläche
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all<double>(0),
      side: WidgetStateProperty.all<BorderSide>(
        BorderSide(color: Colors.transparent),
      ));
}
