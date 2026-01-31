import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'feature.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Feature extends Equatable {
  final List<Choice> choices;
  final List<String> description;
  final List<Feature> features;
  final String name;
  final List<Proficiency> proficiencies;
  final String shortDescription;
  final List<StatModifier> statModifiers;
  final List<FeatureVariable> variables;

  const Feature({
    this.choices = const [],
    this.description = const [],
    this.features = const [],
    required this.name,
    this.proficiencies = const [],
    this.shortDescription = "",
    this.statModifiers = const [],
    this.variables = const [],
  });

  @override
  List<Object?> get props => [
    choices,
    description,
    features,
    name,
    proficiencies,
    shortDescription,
    statModifiers,
    variables,
  ];

  factory Feature.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Feature", _$FeatureFromJson, json)
        as Feature;
  }

  Map<String, dynamic> toJson() => _$FeatureToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
