// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proficiency_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProficiencyCondition _$ProficiencyConditionFromJson(
  Map<String, dynamic> json,
) => ProficiencyCondition(
  name: json['name'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  type: ProficiencyType.fromJson(json['type'] as String),
);

Map<String, dynamic> _$ProficiencyConditionToJson(
  ProficiencyCondition instance,
) => <String, dynamic>{
  'name': instance.name,
  'tags': instance.tags,
  'type': instance.type.toJson(),
};
