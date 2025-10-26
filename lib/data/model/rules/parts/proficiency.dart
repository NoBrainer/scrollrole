import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'proficiency.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Proficiency extends Equatable {
  final String name;
  final List<String> tags;
  final String type;

  const Proficiency({
    required this.name,
    this.tags = const [],
    required this.type,
  });

  @override
  List<Object?> get props => [name, tags, type];

  factory Proficiency.fromJson(Map<String, dynamic> json) {
    try {
      return _$ProficiencyFromJson(json);
    } catch (e) {
      // debug("Failed to parse Proficiency!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ProficiencyToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
