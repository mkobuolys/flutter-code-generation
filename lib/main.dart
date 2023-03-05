import 'package:flutter/widgets.dart';
import 'package:flutter_code_generation/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();

  runApp(const ProviderScope(child: App()));
}
