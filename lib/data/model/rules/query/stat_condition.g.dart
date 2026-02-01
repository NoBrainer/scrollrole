// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatCondition _$StatConditionFromJson(Map<String, dynamic> json) =>
    StatCondition(
      minimum: (json['minimum'] as num).toInt(),
      name: json['name'] as String,
      type: StatType.fromJson(json['type'] as String),
    );

Map<String, dynamic> _$StatConditionToJson(StatCondition instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'name': instance.name,
      'type': instance.type.toJson(),
    };
