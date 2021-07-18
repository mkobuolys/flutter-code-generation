import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../routes.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _NavButton(
              label: l10n.localizationExamplesTitle,
              route: RouteGenerator.localizationExamplesPage,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final String route;

  const _NavButton({
    required this.label,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.of(context).pushNamed(route),
      child: Text(label),
    );
  }
}
