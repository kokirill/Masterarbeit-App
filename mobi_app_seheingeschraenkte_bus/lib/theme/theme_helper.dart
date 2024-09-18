import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

// Helper class für Farbschemas und Farben

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // Eine Map für benutzerdefinierte Farbschemas
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // Eine Map für Farbschemas
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  // Ändert das Farbschema der App
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  // gibt den lightCode für das derzeitige Farbschema zurück
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  // Gibt das die derzeitige ThemeData zurück
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 3,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 3,
        space: 3,
        color: colorScheme.primary,
      ),
    );
  }

  // gibt die Lichtcode-Farben für das aktuelle Farbschema zurück
  LightCodeColors themeColor() => _getThemeColors();

  // gibt die aktuellen Theme daten zurück
  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 36.fSize,
          fontFamily: 'Orbitron',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 32.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 28.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 24.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 20.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w500,
        ),
      );
}

// Eine Klasse mit den Farbschemas
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF000000),
    onPrimary: Color(0XF181818),
    onPrimaryContainer: Color(0XFF0FDB24),
  );
}

// Klasse mit den benutzerdefinierten Farben für lightCode
class LightCodeColors {
  // schwarz
  Color get black900 => Color(0XFF010101);
  // grau
  Color get gray800 => Color(0XFF464545);
  // weiß
  Color get whiteA700 => Color(0XFFFFFFFF);
}
