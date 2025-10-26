// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gear.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gear _$GearFromJson(Map<String, dynamic> json) => Gear(
  cost: json['cost'] as String? ?? "",
  name: json['name'] as String,
  per: (json['per'] as num?)?.toInt() ?? 1,
  weight: json['weight'] as String? ?? "",
);

Map<String, dynamic> _$GearToJson(Gear instance) => <String, dynamic>{
  'cost': instance.cost,
  'name': instance.name,
  'per': instance.per,
  'weight': instance.weight,
};
