import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/dice_type.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'class.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Class extends Equatable {
  final List<int> abilityScoreImprovementLevels;
  final int baseHitPoints;
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final DiceType hitPointDie;
  final String iconId;
  final String name;
  final List<Proficiency> proficiencies;
  final int proficiencyBonus;
  final SpellCasting spellCasting;
  final List<Unlockable> unlockables;

  static const defaultIconId = 'class-custom';

  const Class({
    //TODO: replace ASI levels with unlockables
    this.abilityScoreImprovementLevels = const [],
    this.baseHitPoints = 10,
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    this.hitPointDie = DiceType.d8,
    this.iconId = Class.defaultIconId,
    required this.name,
    this.proficiencies = const [],
    this.proficiencyBonus = 2,
    this.spellCasting = SpellCasting.blank,
    this.unlockables = const [],
  });

  @override
  List<Object?> get props => [
    abilityScoreImprovementLevels,
    baseHitPoints,
    choices,
    description,
    equipment,
    features,
    hitPointDie,
    name,
    proficiencies,
    proficiencyBonus,
    spellCasting,
    unlockables,
  ];

  factory Class.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Class", _$ClassFromJson, json) as Class;
  }

  Map<String, dynamic> toJson() => _$ClassToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
