// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feat _$FeatFromJson(Map<String, dynamic> json) => Feat(
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  descriptionShort: json['descriptionShort'] == null
      ? ''
      : const StringTrimConverter().fromJson(
          json['descriptionShort'] as String,
        ),
  name: const StringTrimConverter().fromJson(json['name'] as String),
  prerequisites:
      (json['prerequisites'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FeatToJson(Feat instance) => <String, dynamic>{
  'description': instance.description
      .map(const StringTrimConverter().toJson)
      .toList(),
  'descriptionShort': const StringTrimConverter().toJson(
    instance.descriptionShort,
  ),
  'name': const StringTrimConverter().toJson(instance.name),
  'prerequisites': instance.prerequisites.map((e) => e.toJson()).toList(),
  'tags': instance.tags.map(const StringTrimConverter().toJson).toList(),
};
