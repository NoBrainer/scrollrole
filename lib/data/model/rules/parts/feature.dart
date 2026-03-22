import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/rules/interface/taggable.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'feature.g.dart';

@DefaultJsonSerializable()
class Feature extends Equatable implements Comparable<Feature>, Taggable {
  final List<Choice> choices;
  final List<String> description;
  final String descriptionShort;
  final List<Equipment> equipment;
  final List<Feature> features;
  final String name;
  final List<Proficiency> proficiencies;
  final int? speed;
  final List<StatModifier> statModifiers;
  @override
  final List<String> tags;
  final List<Unlockable> unlockables;
  final List<FeatureVariable> variables;

  const Feature({
    this.choices = const [],
    this.description = const [],
    this.descriptionShort = '',
    this.equipment = const [],
    this.features = const [],
    required this.name,
    this.proficiencies = const [],
    this.speed,
    this.statModifiers = const [],
    this.tags = const [],
    this.unlockables = const [],
    this.variables = const [],
  });

  @override
  List<Object?> get props => [
    choices,
    description,
    descriptionShort,
    equipment,
    features,
    name,
    proficiencies,
    speed,
    statModifiers,
    tags,
    unlockables,
    variables,
  ];

  factory Feature.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Feature', _$FeatureFromJson, json)
        as Feature;
  }

  Map<String, dynamic> toJson() => _$FeatureToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
