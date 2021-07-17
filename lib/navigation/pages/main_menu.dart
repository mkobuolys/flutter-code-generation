import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Code Generation'),
      ),
      body: const Center(child: Text('Hello, World!')),
    );
  }
}
