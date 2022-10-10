import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  static PageRoute route() {
    return MaterialPageRoute(builder: (context) => const CustomPage());
  }

  const CustomPage();

  @override
  Widget build(BuildContext context) {
    return const _CustomPageView();
  }
}

class _CustomPageView extends StatelessWidget {
  const _CustomPageView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
