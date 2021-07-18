import 'package:flutter/material.dart';

import 'pages/pages.dart';

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}

class RouteGenerator {
  static const String mainMenuPage = '/';
  static const String localizationExamplesPage = '/localization-examples';

  const RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainMenuPage:
        return MaterialPageRoute(builder: (_) => const MainMenuPage());
      case localizationExamplesPage:
        return MaterialPageRoute(
          builder: (_) => const LocalizationExamplesPage(),
        );
      default:
        throw const RouteException('Route not found');
    }
  }
}
