// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatModifier _$StatModifierFromJson(Map<String, dynamic> json) => StatModifier(
  modifier: (json['modifier'] as num).toInt(),
  name: const StringTrimConverter().fromJson(json['name'] as String),
  type: StatType.fromJson(
    const StringTrimConverter().fromJson(json['type'] as String),
  ),
);

Map<String, dynamic> _$StatModifierToJson(StatModifier instance) =>
    <String, dynamic>{
      'modifier': instance.modifier,
      'name': const StringTrimConverter().toJson(instance.name),
      'type': instance.type.toJson(),
    };
