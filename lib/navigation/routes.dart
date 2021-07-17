import 'package:flutter/material.dart';

import 'pages/pages.dart';

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}

class RouteGenerator {
  static const String mainMenuPage = '/';

  const RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainMenuPage:
        return MaterialPageRoute(builder: (_) => const MainMenu());
      default:
        throw const RouteException('Route not found');
    }
  }
}
