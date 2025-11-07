import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/ability_score_adjustment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/util/log_util.dart';

part 'race.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Race extends Equatable {
  final List<AbilityScoreAdjustment> abilityScoreAdjustments;
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final String name;
  final List<Proficiency> proficiencies;
  final int speed;
  final SuggestedCharacteristics suggestedCharacteristics;

  // TODO: Verify that this works instead of having all-args constructor where order matters
  const Race({
    this.abilityScoreAdjustments = const [],
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    required this.name,
    this.proficiencies = const [],
    this.speed = 30,
    this.suggestedCharacteristics = SuggestedCharacteristics.blank,
  });

  @override
  List<Object?> get props => [
    choices,
    description,
    equipment,
    features,
    name,
    proficiencies,
    speed,
    suggestedCharacteristics,
  ];

  factory Race.fromJson(Map<String, dynamic> json) {
    try {
      return _$RaceFromJson(json);
    } catch (e) {
      LogUtil.print("Failed to parse Race!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$RaceToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
