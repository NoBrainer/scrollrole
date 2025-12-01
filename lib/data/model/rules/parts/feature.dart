import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'feature.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Feature extends Equatable {
  final List<String> description;
  final String name;
  final String shortDescription;
  final List<FeatureVariable> variables;

  const Feature({
    this.description = const [],
    required this.name,
    this.shortDescription = "",
    this.variables = const [],
  });

  @override
  List<Object?> get props => [description, name, shortDescription, variables];

  factory Feature.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Feature", _$FeatureFromJson, json)
        as Feature;
  }

  Map<String, dynamic> toJson() => _$FeatureToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
