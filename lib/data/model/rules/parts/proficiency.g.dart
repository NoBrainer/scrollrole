// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proficiency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Proficiency _$ProficiencyFromJson(Map<String, dynamic> json) => Proficiency(
  name: const StringTrimConverter().fromJson(json['name'] as String),
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  type: ProficiencyType.fromJson(
    const StringTrimConverter().fromJson(json['type'] as String),
  ),
);

Map<String, dynamic> _$ProficiencyToJson(Proficiency instance) =>
    <String, dynamic>{
      'name': const StringTrimConverter().toJson(instance.name),
      'tags': instance.tags.map(const StringTrimConverter().toJson).toList(),
      'type': instance.type.toJson(),
    };
