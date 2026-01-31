import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/dice_type.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'class.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Class extends Feature {
  final int baseHitPoints;
  final DiceType hitPointDie;
  final String iconId;
  final int proficiencyBonus;
  final SpellCasting? spellCasting;

  static const defaultBaseHitPoints = 10;
  static const defaultHitPointDie = DiceType.d8;
  static const defaultIconId = 'class-custom';
  static const defaultProficiencyBonus = 2;

  const Class({
    this.baseHitPoints = Class.defaultBaseHitPoints,
    super.choices,
    super.description,
    super.equipment,
    super.features,
    this.hitPointDie = Class.defaultHitPointDie,
    this.iconId = Class.defaultIconId,
    required super.name,
    super.proficiencies,
    this.proficiencyBonus = Class.defaultProficiencyBonus,
    super.shortDescription,
    super.speed,
    this.spellCasting,
    super.statModifiers,
    super.suggestedCharacteristics,
    super.unlockables,
    super.variables,
  });

  @override
  List<Object?> get props => [
    ...super.props,
    baseHitPoints,
    hitPointDie,
    iconId,
    proficiencyBonus,
    spellCasting,
  ];

  factory Class.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Class", _$ClassFromJson, json) as Class;
  }

  @override
  Map<String, dynamic> toJson() => _$ClassToJson(this);
}
