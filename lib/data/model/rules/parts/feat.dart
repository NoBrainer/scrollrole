import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feat.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Feat extends Equatable {
  final List<String> description;
  final String name;
  final List<String> prerequisites;

  const Feat({
    this.description = const [],
    required this.name,
    this.prerequisites = const [],
  });

  @override
  List<Object?> get props => [description, name, prerequisites];

  factory Feat.fromJson(Map<String, dynamic> json) {
    try {
      return _$FeatFromJson(json);
    } catch (e) {
      // debug("Failed to parse Feat!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$FeatToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
