import 'package:freezed_annotation/freezed_annotation.dart';

part 'design_pattern.freezed.dart';
part 'design_pattern.g.dart';

@freezed
class DesignPattern with _$DesignPattern {
  const factory DesignPattern({
    required String id,
    required String title,
    required String description,
  }) = _DesignPattern;

  factory DesignPattern.fromJson(Map<String, dynamic> json) =>
      _$DesignPatternFromJson(json);
}
