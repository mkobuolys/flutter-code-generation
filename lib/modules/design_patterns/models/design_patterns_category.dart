import 'package:flutter_code_generation/modules/design_patterns/models/design_pattern.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
