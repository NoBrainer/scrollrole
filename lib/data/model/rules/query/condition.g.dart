// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
  feature: json['feature'] as String?,
  level: (json['level'] as num?)?.toInt(),
  levels: (json['levels'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  proficiency: json['proficiency'] == null
      ? null
      : Proficiency.fromJson(json['proficiency'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
  'feature': instance.feature,
  'level': instance.level,
  'levels': instance.levels,
  'proficiency': instance.proficiency?.toJson(),
};
