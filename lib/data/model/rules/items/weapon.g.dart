// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weapon _$WeaponFromJson(Map<String, dynamic> json) => Weapon(
  cost: json['cost'] as String? ?? "",
  damage: (json['damage'] as num?)?.toInt() ?? 1,
  damageType: json['damageType'] as String? ?? "",
  name: json['name'] as String,
  range: json['range'] as String? ?? "",
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  versatileDamage: json['versatileDamage'] as String? ?? "",
  weight: json['weight'] as String? ?? "",
);

Map<String, dynamic> _$WeaponToJson(Weapon instance) => <String, dynamic>{
  'cost': instance.cost,
  'damage': instance.damage,
  'damageType': instance.damageType,
  'name': instance.name,
  'range': instance.range,
  'tags': instance.tags,
  'versatileDamage': instance.versatileDamage,
  'weight': instance.weight,
};
