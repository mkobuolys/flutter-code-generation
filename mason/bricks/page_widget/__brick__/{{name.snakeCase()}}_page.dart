import 'package:flutter/material.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  {{#routable}}
  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const {{name.pascalCase()}}Page());
  }
  {{/routable}}

  const {{name.pascalCase()}}Page();

  @override
  Widget build(BuildContext context) {
    return const _{{name.pascalCase()}}PageView();
  }
}

class _{{name.pascalCase()}}PageView extends StatelessWidget {
  const _{{name.pascalCase()}}PageView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
