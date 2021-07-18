import 'package:flutter/material.dart';

import '../../assets/assets.dart';
import '../../l10n/l10n.dart';

class AssetsExamplesPage extends StatelessWidget {
  const AssetsExamplesPage();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.assetsExamplesTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _AssetsSection(
              title: l10n.assetsExamplesIconsText,
              child: const _IconsSection(),
            ),
            const Divider(height: 16.0),
            _AssetsSection(
              title: l10n.assetsExamplesImagesText,
              child: const _ImagesSection(),
            ),
            const Divider(height: 16.0),
            _AssetsSection(
              title: l10n.assetsExamplesFlareText,
              child: const _FlareSection(),
            ),
          ],
        ),
      ),
    );
  }
}

class _AssetsSection extends StatelessWidget {
  final String title;
  final Widget child;

  const _AssetsSection({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.headline4),
        const SizedBox(height: 16.0),
        child,
      ],
    );
  }
}

class _IconsSection extends StatelessWidget {
  static const _iconWidth = 40.0;

  const _IconsSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.icons.githubLogo.svg(width: _iconWidth),
        const SizedBox(width: 8.0),
        Assets.images.icons.mediumLogo.svg(width: _iconWidth),
        const SizedBox(width: 8.0),
        Assets.images.icons.twitterLogo.svg(width: _iconWidth),
      ],
    );
  }
}

class _ImagesSection extends StatelessWidget {
  static const _imageHeight = 150.0;
  static const _imageWidth = _imageHeight;

  const _ImagesSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Assets.images.dash1.image(
          height: _imageHeight,
          width: _imageWidth,
        ),
        Assets.images.dash2.image(
          height: _imageHeight,
          width: _imageWidth,
        ),
      ],
    );
  }
}

class _FlareSection extends StatelessWidget {
  const _FlareSection();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200.0,
        width: 200.0,
        child: Assets.flare.penguin.flare(
          animation: 'walk',
        ),
      ),
    );
  }
}