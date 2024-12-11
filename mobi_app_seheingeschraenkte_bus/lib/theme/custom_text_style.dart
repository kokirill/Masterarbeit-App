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

// collection of predifined text styles

class CustomTextStyle {
  static get displaySmallExo => theme.textTheme.displaySmall!.exo.copyWith(
        fontWeight: FontWeight.w500,
      );

  // header
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

  // other text
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
