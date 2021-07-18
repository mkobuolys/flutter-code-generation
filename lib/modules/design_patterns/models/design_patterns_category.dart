import 'package:freezed_annotation/freezed_annotation.dart';

import '../design_patterns.dart';

part 'design_patterns_category.freezed.dart';
part 'design_patterns_category.g.dart';

@freezed
class DesignPatternsCategory with _$DesignPatternsCategory {
  const factory DesignPatternsCategory({
    required String id,
    required String title,
    required String color,
    required List<DesignPattern> patterns,
  }) = _DesignPatternsCategory;

  factory DesignPatternsCategory.fromJson(Map<String, dynamic> json) =>
      _$DesignPatternsCategoryFromJson(json);
}
