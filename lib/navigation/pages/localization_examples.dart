import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';

class LocalizationExamples extends StatelessWidget {
  const LocalizationExamples();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.localizationExamplesTitle),
      ),
      body: Container(),
    );
  }
}
