import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/ability.dart';
import 'package:scrollrole/data/model/enum/armor_type.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'armor.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Armor extends Equatable {
  final int baseAc;
  final int cost;
  final int? maxModifier;
  final Ability modifierAbility;
  final String name;
  final bool stealthDisadvantage;
  final int? strengthRequirement;
  final ArmorType type;
  final String weight;

  const Armor({
    this.baseAc = 10,
    this.cost = 0,
    this.maxModifier,
    this.modifierAbility = Ability.dex,
    required this.name,
    this.stealthDisadvantage = false,
    this.strengthRequirement,
    required this.type,
    this.weight = "",
  });

  @override
  List<Object?> get props => [
    baseAc,
    cost,
    maxModifier,
    modifierAbility,
    name,
    stealthDisadvantage,
    strengthRequirement,
    type,
    weight,
  ];

  factory Armor.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Armor", _$ArmorFromJson, json) as Armor;
  }

  Map<String, dynamic> toJson() => _$ArmorToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
