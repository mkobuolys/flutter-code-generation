import 'package:flutter/material.dart';

import 'l10n/l10n.dart';
import 'navigation/routes.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Code Generation',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
