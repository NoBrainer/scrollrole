// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
  feature: json['feature'] as String?,
  level: (json['level'] as num?)?.toInt(),
  proficiency: json['proficiency'] == null
      ? null
      : Proficiency.fromJson(json['proficiency'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
  'feature': instance.feature,
  'level': instance.level,
  'proficiency': instance.proficiency?.toJson(),
};
