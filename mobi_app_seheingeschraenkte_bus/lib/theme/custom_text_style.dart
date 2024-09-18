import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get orbitron {
    return copyWith(fontFamily: 'Orbitron');
  }

  TextStyle get inter {
    return copyWith(fontFamily: 'Inter');
  }

  TextStyle get exo {
    return copyWith(fontFamily: 'Exo');
  }
}

// Eine Sammlung von vordefinierten Textstilen für die Gestaltung von Texten,
// kategorisiert nach verschiedenen Schriftfamilien und Schriftschnitten
// Darüber hinaus enthält dies Erweiterungen für TextStyle,
// um bestimmte Schriftfamilien einfach auf Text anzuwenden

class CustomTextStyle {
  // Zeigt Textstil an
  static get displaySmallExo => theme.textTheme.displaySmall!.exo.copyWith(
        fontWeight: FontWeight.w500,
      );

  // Kopfzeile
  static get headlineLargeOrbitron =>
      theme.textTheme.headlineLarge!.orbitron.copyWith(
        fontWeight: FontWeight.w800,
      );

  static get headlingeLargeOrbitronExtraBold =>
      theme.textTheme.headlineLarge!.orbitron.copyWith(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w800,
      );

  static get headlineMediumOrbitron =>
      theme.textTheme.headlineMedium!.orbitron.copyWith(
        fontSize: 26.fSize,
        fontWeight: FontWeight.w800,
      );

  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );

  // anderer Text
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );

  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );

  static get titleMedidiumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}
