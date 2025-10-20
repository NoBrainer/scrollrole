import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'feature.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Feature extends Equatable {
  final String name;
  final List<String> description;
  final String shortDescription;

  const Feature({
    required this.name,
    this.description = const [],
    this.shortDescription = "",
  });

  @override
  List<Object?> get props => [description, name, shortDescription];

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
