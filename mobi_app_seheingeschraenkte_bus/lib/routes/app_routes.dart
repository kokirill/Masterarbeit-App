import 'package:flutter/material.dart';

import '../screens/app_navigation_screen.dart';
import '../screens/bus_ausgewaehlt_screen.dart';
import '../screens/einstellungen_screen.dart';
import '../screens/farbschema_screen.dart';
import '../screens/haltestelle_ausgewaehlt_screen.dart';
import '../screens/radar_screen.dart';
import '../screens/sprachansagen_screen.dart';
import '../screens/stoerungsmelder_screen.dart';
import '../screens/vibrations_feedback_screen.dart';
import '../screens/zielort_nach_hause_screen.dart';
import '../screens/zielort_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String radarScreen = '/radar_screen';

  static const String busAusgewaehltScreen = '/bus_ausgewaehlt_screen';

  static const String haltestelleAusgewaehltScreen =
      '/haltetelle_ausgewaehlt_screen';

  static const String zielortScreen = '/zielort_screen';

  static const String zielortNachHause = '/zielort_nach_hause_screen';

  static const String einstellungScreen = '/einstellung_screen';

  static const String sprachansagenScreen = '/sprachansgen_screen';

  static const String vibrationsFeedbackScreen = '/virbations_feedback_screen';

  static const String farbschemaScreen = '/farbschema_screen';

  static const String stoerungsmelderScreen = '/stoerungsmelder_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String intialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    radarScreen: (context) => RadarScreen(),
    busAusgewaehltScreen: (context) => BusAusgewaehltScreen(),
    haltestelleAusgewaehltScreen: (context) => HaltestelleAusgewaehltScreen(),
    zielortScreen: (context) => ZielortScreen(),
    zielortNachHause: (context) => ZielortNachHauseScreen(),
    einstellungScreen: (context) => EinstellungenScreen(),
    sprachansagenScreen: (context) => SprachansagenScreen(),
    vibrationsFeedbackScreen: (context) => VibrationsFeedbackScreen(),
    farbschemaScreen: (context) => FarbschemaScreen(),
    stoerungsmelderScreen: (context) => StoerungsmelderScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    intialRoute: (context) => RadarScreen(),
  };
}
