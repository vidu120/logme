import 'package:flutter/material.dart';
import '../views/home_page.dart';

class AppRoutes {
  static const String home = '/';

  static dynamic generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
      default:
        return (context) => const HomePage();
    }
  }
}
