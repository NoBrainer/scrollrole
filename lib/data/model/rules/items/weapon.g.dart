// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weapon _$WeaponFromJson(Map<String, dynamic> json) => Weapon(
  cost: (json['cost'] as num?)?.toInt() ?? 0,
  damage: json['damage'] == null
      ? '1d6'
      : const StringTrimConverter().fromJson(json['damage'] as String),
  damageType: json['damageType'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['damageType'] as String),
  name: const StringTrimConverter().fromJson(json['name'] as String),
  range: (json['range'] as num?)?.toInt() ?? 0,
  rangeUnits: json['rangeUnits'] == null
      ? 'ft'
      : const StringTrimConverter().fromJson(json['rangeUnits'] as String),
  rangeWithDisadvantage: (json['rangeWithDisadvantage'] as num?)?.toInt() ?? 0,
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  versatileDamage: json['versatileDamage'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['versatileDamage'] as String),
  weight: json['weight'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['weight'] as String),
);

Map<String, dynamic> _$WeaponToJson(Weapon instance) => <String, dynamic>{
  'cost': instance.cost,
  'damage': const StringTrimConverter().toJson(instance.damage),
  'damageType': const StringTrimConverter().toJson(instance.damageType),
  'name': const StringTrimConverter().toJson(instance.name),
  'range': instance.range,
  'rangeUnits': const StringTrimConverter().toJson(instance.rangeUnits),
  'rangeWithDisadvantage': instance.rangeWithDisadvantage,
  'tags': instance.tags.map(const StringTrimConverter().toJson).toList(),
  'versatileDamage': const StringTrimConverter().toJson(
    instance.versatileDamage,
  ),
  'weight': const StringTrimConverter().toJson(instance.weight),
};
