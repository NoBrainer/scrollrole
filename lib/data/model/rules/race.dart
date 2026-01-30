import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'race.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Race extends Equatable {
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final String iconId;
  final String name;
  final List<StatModifier> statModifiers;
  final List<Proficiency> proficiencies;
  final int speed;
  final SuggestedCharacteristics suggestedCharacteristics;

  static const defaultIconId = 'race-custom';

  const Race({
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    this.iconId = Race.defaultIconId,
    required this.name,
    this.proficiencies = const [],
    this.speed = 30,
    this.statModifiers = const [],
    this.suggestedCharacteristics = SuggestedCharacteristics.blank,
  });

  @override
  List<Object?> get props => [
    choices,
    description,
    equipment,
    features,
    iconId,
    name,
    proficiencies,
    speed,
    statModifiers,
    suggestedCharacteristics,
  ];

  factory Race.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Race", _$RaceFromJson, json) as Race;
  }

  Map<String, dynamic> toJson() => _$RaceToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
