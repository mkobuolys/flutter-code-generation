import 'package:flutter/material.dart';
import 'package:flutter_code_generation/constants/constants.dart';
import 'package:flutter_code_generation/l10n/l10n.dart';
import 'package:flutter_code_generation/navigation/router.dart';

const _spacer = SizedBox(height: LayoutConstants.spaceM);

class MainMenuPage extends StatelessWidget {
  const MainMenuPage();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _NavButton(
              label: l10n.assetsExamplesTitle,
              onPressed: () => const AssetsExamplesRoute().go(context),
            ),
            _spacer,
            _NavButton(
              label: l10n.localizationExamplesTitle,
              onPressed: () => const LocalizationExamplesRoute().go(context),
            ),
            _spacer,
            _NavButton(
              label: l10n.stateManagementExamplesTitle,
              onPressed: () => const StateManagementExamplesRoute().go(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const _NavButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
