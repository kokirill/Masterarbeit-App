import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (contxt, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'mobi_app_seheingeschraenkte_bus',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.intialRoute,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
