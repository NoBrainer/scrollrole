import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feature.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Feature extends Equatable {
  final List<String> description;
  final String name;
  final String shortDescription;
  final String value; //TODO: Rename to quantity or amount

  const Feature({
    this.description = const [],
    required this.name,
    this.shortDescription = "",
    this.value = "",
  });

  @override
  List<Object?> get props => [description, name, shortDescription, value];

  factory Feature.fromJson(Map<String, dynamic> json) {
    try {
      return _$FeatureFromJson(json);
    } catch (e) {
      // debug("Failed to parse Feature!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$FeatureToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
