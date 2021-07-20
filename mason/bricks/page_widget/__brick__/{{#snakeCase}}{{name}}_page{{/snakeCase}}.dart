import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}} page {{/pascalCase}} extends StatelessWidget {
  {{#routable}}
  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const {{#pascalCase}}{{name}} page {{/pascalCase}}());
  }
  {{/routable}}

  const {{#pascalCase}}{{name}} page {{/pascalCase}}();

  @override
  Widget build(BuildContext context) {
    return const _{{#pascalCase}} {{name}} page view {{/pascalCase}}();
  }
}

class _{{#pascalCase}}{{name}} page view {{/pascalCase}} extends StatelessWidget {
  const _{{#pascalCase}}{{name}} page view {{/pascalCase}}();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
