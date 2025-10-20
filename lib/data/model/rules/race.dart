import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/abilityScoreAdjustment.dart';
import 'package:scrollrole/data/model/rules/choice.dart';
import 'package:scrollrole/data/model/rules/equipment.dart';
import 'package:scrollrole/data/model/rules/feature.dart';
import 'package:scrollrole/data/model/rules/proficiency.dart';
import 'package:scrollrole/data/model/rules/suggestedCharacteristics.dart';

part 'race.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Race extends Equatable {
  final String name;
  final List<AbilityScoreAdjustment> abilityScoreAdjustments;
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final List<Proficiency> proficiencies;
  final int speed;
  final SuggestedCharacteristics suggestedCharacteristics;

  // TODO: Verify that this works instead of having all-args constructor where order matters
  const Race({
    required this.name,
    this.abilityScoreAdjustments = const [],
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    this.proficiencies = const [],
    this.speed = 30,
    this.suggestedCharacteristics = const SuggestedCharacteristics(),
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
      // debug("Failed to parse Race!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$RaceToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
