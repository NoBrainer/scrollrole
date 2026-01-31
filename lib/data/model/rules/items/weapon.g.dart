// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weapon _$WeaponFromJson(Map<String, dynamic> json) => Weapon(
  cost: (json['cost'] as num?)?.toInt() ?? 0,
  damage: json['damage'] as String? ?? '1d6',
  damageType: json['damageType'] as String? ?? '',
  name: json['name'] as String,
  range: (json['range'] as num?)?.toInt() ?? 0,
  rangeUnits: json['rangeUnits'] as String? ?? 'ft',
  rangeWithDisadvantage: (json['rangeWithDisadvantage'] as num?)?.toInt() ?? 0,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  versatileDamage: json['versatileDamage'] as String? ?? '',
  weight: json['weight'] as String? ?? '',
);

Map<String, dynamic> _$WeaponToJson(Weapon instance) => <String, dynamic>{
  'cost': instance.cost,
  'damage': instance.damage,
  'damageType': instance.damageType,
  'name': instance.name,
  'range': instance.range,
  'rangeUnits': instance.rangeUnits,
  'rangeWithDisadvantage': instance.rangeWithDisadvantage,
  'tags': instance.tags,
  'versatileDamage': instance.versatileDamage,
  'weight': instance.weight,
};
