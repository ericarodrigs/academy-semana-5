import 'package:exercicio_semana_5/src/screens/home_page.dart';
import 'package:exercicio_semana_5/src/screens/login_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      default:
        return null;
    }
  }
}
