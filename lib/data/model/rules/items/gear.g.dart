// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gear _$GearFromJson(Map<String, dynamic> json) => Gear(
  cost: (json['cost'] as num?)?.toInt() ?? 0,
  name: const StringTrimConverter().fromJson(json['name'] as String),
  per: json['per'] == null
      ? '1'
      : const StringTrimConverter().fromJson(json['per'] as String),
  weight: json['weight'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['weight'] as String),
);

Map<String, dynamic> _$GearToJson(Gear instance) => <String, dynamic>{
  'cost': instance.cost,
  'name': const StringTrimConverter().toJson(instance.name),
  'per': const StringTrimConverter().toJson(instance.per),
  'weight': const StringTrimConverter().toJson(instance.weight),
};
