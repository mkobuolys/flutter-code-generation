import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../../../assets/assets.dart';
import '../models/models.dart';

class DesignPatternsJsonNotFoundException implements Exception {}

class DesignPatternsRepository {
  Future<List<DesignPatternsCategory>> getCategories() async {
    try {
      final categoriesJson = await rootBundle.loadString(
        Assets.json.designPatterns,
      );
      final categories = (json.decode(categoriesJson) as List)
          .map(
            (categoryJson) => DesignPatternsCategory.fromJson(
              categoryJson as Map<String, dynamic>,
            ),
          )
          .toList();

      // Simulates a delayed data loading
      return Future.delayed(const Duration(seconds: 2), () => categories);
    } on Exception {
      throw DesignPatternsJsonNotFoundException();
    }
  }
}
