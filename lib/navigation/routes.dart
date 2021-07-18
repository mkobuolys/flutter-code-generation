import 'package:flutter/material.dart';

import 'pages/pages.dart';

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}

class RouteGenerator {
  static const String mainMenuPage = '/';
  static const String assetsExamplesPage = '/assets-examples';
  static const String localizationExamplesPage = '/localization-examples';
  static const String stateManagementExamplesPage =
      '/state-management-examples';

  const RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainMenuPage:
        return MaterialPageRoute(builder: (_) => const MainMenuPage());
      case assetsExamplesPage:
        return MaterialPageRoute(builder: (_) => const AssetsExamplesPage());
      case localizationExamplesPage:
        return MaterialPageRoute(
          builder: (_) => const LocalizationExamplesPage(),
        );
      case stateManagementExamplesPage:
        return MaterialPageRoute(
          builder: (_) => const StateManagementExamplesPage(),
        );
      default:
        throw const RouteException('Route not found');
    }
  }
}
