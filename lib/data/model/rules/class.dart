import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/choice.dart';
import 'package:scrollrole/data/model/rules/equipment.dart';
import 'package:scrollrole/data/model/rules/feature.dart';
import 'package:scrollrole/data/model/rules/proficiency.dart';

part 'class.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Class extends Equatable {
  final String name;
  final List<int> abilityScoreImprovementLevels;
  final int baseHitPoints;
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final String hitDice; //TODO: update type
  final List<Proficiency> proficiencies;
  final int proficiencyBonus;
  final Map spellCasting; //TODO: update type
  final Map unlockables; //TODO: update type

  // TODO: Verify that this works instead of having all-args constructor where order matters
  const Class({
    required this.name,
    this.abilityScoreImprovementLevels = const [],
    this.baseHitPoints = 10,
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    this.hitDice = "D8",
    this.proficiencies = const [],
    this.proficiencyBonus = 2,
    this.spellCasting = const {},
    this.unlockables = const {},
  });

  @override
  List<Object?> get props => [
    abilityScoreImprovementLevels,
    baseHitPoints,
    choices,
    description,
    equipment,
    features,
    hitDice,
    name,
    proficiencies,
    proficiencyBonus,
    spellCasting,
    unlockables,
  ];

  factory Class.fromJson(Map<String, dynamic> json) {
    try {
      return _$ClassFromJson(json);
    } catch (e) {
      // debug("Failed to parse Class!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ClassToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
