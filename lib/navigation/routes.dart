import 'package:app_suntec/ui/screen/intro_screen.dart';
import 'package:app_suntec/ui/screen/splash_screen.dart';
//import 'package:app_suntec/ui/splash_screen.dart';
import 'package:flutter/material.dart';

import '../ui/client/screen/home_screen.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';
  static const intro = '/intro';

  static Route routes(RouteSettings settings) {
    MaterialPageRoute buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    switch (settings.name) {
      case splash:
        return buildRoute(const SplashScreen());
      case intro:
        return buildRoute(const IntroScreen());
      case home:
        return buildRoute(const HomeScreenC());
      default:
        throw Exception('La ruta no existe');
    }
  }
}
