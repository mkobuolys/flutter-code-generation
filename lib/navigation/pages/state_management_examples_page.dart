import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_code_generation/l10n/l10n.dart';
import 'package:flutter_code_generation/modules/design_patterns/design_patterns.dart';

class StateManagementExamplesPage extends StatelessWidget {
  const StateManagementExamplesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.stateManagementExamplesTitle),
      ),
      body: BlocProvider(
        create: (_) => DesignPatternsCubit(
          repository: DesignPatternsRepository(),
        )..load(),
        child: const _StateManagementExamplesPageView(),
      ),
    );
  }
}

class _StateManagementExamplesPageView extends StatelessWidget {
  const _StateManagementExamplesPageView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DesignPatternsCubit, DesignPatternsState>(
      builder: (_, state) => state.maybeWhen(
        loadInProgress: () => const _LoaderView(),
        loadFailure: () => const _ErrorView(),
        loadSuccess: (categories) => DesignPatternsListView(
          categories: categories,
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}

class _LoaderView extends StatelessWidget {
  const _LoaderView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.l10n.stateManagementExamplesErrorText,
        style:
            Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.red),
        textAlign: TextAlign.center,
      ),
    );
  }
}
