import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../l10n/l10n.dart';
import '../models/models.dart';

class DesignPatternsListView extends StatelessWidget {
  final List<DesignPatternsCategory> categories;

  const DesignPatternsListView({
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(LayoutConstants.paddingL),
      child: Column(
        children: [
          for (final category in categories) ...[
            _DesignPatternsCategoryCard(category: category),
            const SizedBox(height: LayoutConstants.spaceL)
          ],
        ],
      ),
    );
  }
}

class _DesignPatternsCategoryCard extends StatelessWidget {
  final DesignPatternsCategory category;

  const _DesignPatternsCategoryCard({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: const EdgeInsets.all(0),
      color: Color(int.parse(category.color)),
      elevation: 8.0,
      clipBehavior: Clip.antiAlias,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: _CategoryPatternsExpandableView(category: category),
      ),
    );
  }
}

class _CategoryPatternsExpandableView extends StatelessWidget {
  final DesignPatternsCategory category;

  const _CategoryPatternsExpandableView({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(
        horizontal: LayoutConstants.paddingL,
        vertical: LayoutConstants.paddingM,
      ),
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      title: _CategoryTitle(
        title: category.title,
        itemsCount: category.patterns.length,
      ),
      children: [
        for (final pattern in category.patterns) ...[
          _DesignPatternTile(designPattern: pattern),
          const SizedBox(height: LayoutConstants.spaceXS),
        ]
      ],
    );
  }
}

class _CategoryTitle extends StatelessWidget {
  final String title;
  final int itemsCount;

  const _CategoryTitle({
    required this.title,
    required this.itemsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: 26.0,
                color: Colors.white,
              ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: LayoutConstants.spaceL),
        Text(
          context.l10n
              .stateManagementExamplesDesignPatternsCountText(itemsCount),
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}

class _DesignPatternTile extends StatelessWidget {
  final DesignPattern designPattern;

  const _DesignPatternTile({
    required this.designPattern,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(
          top: LayoutConstants.paddingM,
          left: LayoutConstants.paddingL,
          right: LayoutConstants.paddingL,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              designPattern.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Text(
              designPattern.description,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: LayoutConstants.spaceM),
          ],
        ),
      ),
    );
  }
}
