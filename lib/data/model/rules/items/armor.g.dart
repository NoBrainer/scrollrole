// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'armor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Armor _$ArmorFromJson(Map<String, dynamic> json) => Armor(
  baseAC: (json['baseAC'] as num?)?.toInt() ?? 10,
  cost: json['cost'] as String? ?? "",
  maxModifier: (json['maxModifier'] as num?)?.toInt(),
  modifier: json['modifier'] as String? ?? "DEX",
  name: json['name'] as String,
  stealthDisadv: json['stealthDisadv'] as bool? ?? false,
  strengthReq: (json['strengthReq'] as num?)?.toInt(),
  type: json['type'] as String? ?? "",
  weight: json['weight'] as String? ?? "",
);

Map<String, dynamic> _$ArmorToJson(Armor instance) => <String, dynamic>{
  'baseAC': instance.baseAC,
  'cost': instance.cost,
  'maxModifier': instance.maxModifier,
  'modifier': instance.modifier,
  'name': instance.name,
  'stealthDisadv': instance.stealthDisadv,
  'strengthReq': instance.strengthReq,
  'type': instance.type,
  'weight': instance.weight,
};
