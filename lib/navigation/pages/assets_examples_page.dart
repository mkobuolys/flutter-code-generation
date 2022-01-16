import 'package:flutter/material.dart';
import 'package:flutter_code_generation/assets/assets.dart';
import 'package:flutter_code_generation/constants/constants.dart';
import 'package:flutter_code_generation/l10n/l10n.dart';

const _divider = Divider(height: LayoutConstants.spaceL);

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
        padding: const EdgeInsets.all(LayoutConstants.paddingL),
        child: Column(
          children: [
            _AssetsSection(
              title: l10n.assetsExamplesIconsText,
              child: const _IconsSection(),
            ),
            _divider,
            _AssetsSection(
              title: l10n.assetsExamplesImagesText,
              child: const _ImagesSection(),
            ),
            _divider,
            _AssetsSection(
              title: l10n.assetsExamplesFlareText,
              child: const _FlareSection(),
            ),
            _AssetsSection(
              title: l10n.assetsExamplesRiveText,
              child: const _RiveSection(),
            ),
            _divider,
            _AssetsSection(
              title: l10n.assetsExamplesFontsText,
              child: const _FontsSection(),
            ),
            _divider,
            _AssetsSection(
              title: l10n.assetsExamplesColorsText,
              child: const _ColorsSection(),
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
        const SizedBox(height: LayoutConstants.spaceL),
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
        const SizedBox(width: LayoutConstants.spaceM),
        Assets.images.icons.mediumLogo.svg(width: _iconWidth),
        const SizedBox(width: LayoutConstants.spaceM),
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

class _RiveSection extends StatelessWidget {
  const _RiveSection();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 150.0,
        width: 200.0,
        child: Assets.rive.vehicles.rive(),
      ),
    );
  }
}

class _FontsSection extends StatelessWidget {
  const _FontsSection();

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.assetsExamplesFontsHelloWorldText,
      style: Theme.of(context)
          .textTheme
          .headline2!
          .copyWith(fontFamily: FontFamily.fuggles),
    );
  }
}

class _ColorsSection extends StatelessWidget {
  const _ColorsSection();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const _ColorCube(color: ColorName.black),
        const _ColorCube(color: ColorName.gray70),
        const _ColorCube(color: ColorName.gray410),
        _ColorCube(color: ColorName.crimsonRed.shade50),
        _ColorCube(color: ColorName.crimsonRed.shade100),
        _ColorCube(color: ColorName.crimsonRed.shade200),
        _ColorCube(color: ColorName.crimsonRed.shade300),
        _ColorCube(color: ColorName.crimsonRed.shade400),
        _ColorCube(color: ColorName.crimsonRed.shade500),
        _ColorCube(color: ColorName.crimsonRed.shade600),
        _ColorCube(color: ColorName.crimsonRed.shade700),
        _ColorCube(color: ColorName.crimsonRed.shade800),
        _ColorCube(color: ColorName.crimsonRed.shade900),
        _ColorCube(color: ColorName.yellowOcher.shade50),
        _ColorCube(color: ColorName.yellowOcher.shade100),
        _ColorCube(color: ColorName.yellowOcher.shade200),
        _ColorCube(color: ColorName.yellowOcher.shade300),
        _ColorCube(color: ColorName.yellowOcher.shade400),
        _ColorCube(color: ColorName.yellowOcher.shade500),
        _ColorCube(color: ColorName.yellowOcher.shade600),
        _ColorCube(color: ColorName.yellowOcher.shade700),
        _ColorCube(color: ColorName.yellowOcher.shade800),
        _ColorCube(color: ColorName.yellowOcher.shade900),
        _ColorCube(color: ColorName.yellowOcherAccent.shade100),
        _ColorCube(color: ColorName.yellowOcherAccent.shade200),
        _ColorCube(color: ColorName.yellowOcherAccent.shade400),
        _ColorCube(color: ColorName.yellowOcherAccent.shade700),
      ],
    );
  }
}

class _ColorCube extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  const _ColorCube({
    required this.color,
    this.height = 50.0,
    this.width = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
