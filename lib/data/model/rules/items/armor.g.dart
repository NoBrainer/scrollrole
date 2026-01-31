// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'armor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Armor _$ArmorFromJson(Map<String, dynamic> json) => Armor(
  baseAc: (json['baseAc'] as num?)?.toInt() ?? 10,
  cost: (json['cost'] as num?)?.toInt() ?? 0,
  maxModifier: (json['maxModifier'] as num?)?.toInt(),
  modifierAbility: json['modifierAbility'] == null
      ? Ability.dex
      : Ability.fromJson(json['modifierAbility'] as String),
  name: json['name'] as String,
  stealthDisadvantage: json['stealthDisadvantage'] as bool? ?? false,
  strengthRequirement: (json['strengthRequirement'] as num?)?.toInt(),
  type: ArmorType.fromJson(json['type'] as String),
  weight: json['weight'] as String? ?? '',
);

Map<String, dynamic> _$ArmorToJson(Armor instance) => <String, dynamic>{
  'baseAc': instance.baseAc,
  'cost': instance.cost,
  'maxModifier': instance.maxModifier,
  'modifierAbility': instance.modifierAbility.toJson(),
  'name': instance.name,
  'stealthDisadvantage': instance.stealthDisadvantage,
  'strengthRequirement': instance.strengthRequirement,
  'type': instance.type.toJson(),
  'weight': instance.weight,
};
