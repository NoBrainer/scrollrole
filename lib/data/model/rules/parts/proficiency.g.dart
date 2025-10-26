// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proficiency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Proficiency _$ProficiencyFromJson(Map<String, dynamic> json) => Proficiency(
  name: json['name'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  type: json['type'] as String,
);

Map<String, dynamic> _$ProficiencyToJson(Proficiency instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tags': instance.tags,
      'type': instance.type,
    };
