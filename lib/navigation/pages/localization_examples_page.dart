import 'package:flutter/material.dart';
import 'package:flutter_code_generation/constants/constants.dart';
import 'package:flutter_code_generation/l10n/l10n.dart';

class LocalizationExamplesPage extends StatefulWidget {
  const LocalizationExamplesPage();

  @override
  _LocalizationExamplesPageState createState() =>
      _LocalizationExamplesPageState();
}

class _LocalizationExamplesPageState extends State<LocalizationExamplesPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.localizationExamplesTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(LayoutConstants.paddingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _LocalizationExamplesContent(
              languageCode: 'en',
              counter: _counter,
            ),
            const Divider(height: LayoutConstants.spaceL),
            _LocalizationExamplesContent(
              languageCode: 'lt',
              counter: _counter,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ), //
    );
  }
}

class _LocalizationExamplesContent extends StatelessWidget {
  final String languageCode;
  final int counter;

  const _LocalizationExamplesContent({
    required this.languageCode,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2;

    return Localizations.override(
      context: context,
      locale: Locale(languageCode),
      child: Builder(
        builder: (context) {
          final l10n = context.l10n;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  l10n.localizationExamplesLocaleText(languageCode),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(height: LayoutConstants.spaceL),
              Text(
                l10n.localizationExamplesCurrentDateText(DateTime.now()),
                style: textStyle,
              ),
              const SizedBox(height: LayoutConstants.spaceS),
              Text(
                l10n.localizationExamplesButtonPressedText(counter),
                style: textStyle,
              ),
              const SizedBox(height: LayoutConstants.spaceS),
              Text(
                l10n.localizationExamplesCurrencyText(counter * 345.67),
                style: textStyle,
              ),
            ],
          );
        },
      ),
    );
  }
}
