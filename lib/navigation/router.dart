import 'package:flutter/widgets.dart';
import 'package:flutter_code_generation/navigation/pages/pages.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
      routes: $appRoutes,
      redirect: (context, state) =>
          state.location.isEmpty ? const MainMenuRoute().location : null,
    );

@TypedGoRoute<MainMenuRoute>(
  path: '/',
  routes: [
    TypedGoRoute<AssetsExamplesRoute>(path: 'assets-examples'),
    TypedGoRoute<LocalizationExamplesRoute>(path: 'localization-examples'),
    TypedGoRoute<StateManagementExamplesRoute>(
      path: 'state-management-examples',
    ),
  ],
)
@immutable
class MainMenuRoute extends GoRouteData {
  const MainMenuRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MainMenuPage();
  }
}

@immutable
class AssetsExamplesRoute extends GoRouteData {
  const AssetsExamplesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AssetsExamplesPage();
  }
}

@immutable
class LocalizationExamplesRoute extends GoRouteData {
  const LocalizationExamplesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LocalizationExamplesPage();
  }
}

@immutable
class StateManagementExamplesRoute extends GoRouteData {
  const StateManagementExamplesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const StateManagementExamplesPage();
  }
}
