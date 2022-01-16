import 'package:flutter/material.dart';
import 'package:flutter_code_generation/l10n/l10n.dart';
import 'package:flutter_code_generation/navigation/routes.dart';

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
