// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feat _$FeatFromJson(Map<String, dynamic> json) => Feat(
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  descriptionShort: json['descriptionShort'] as String? ?? '',
  name: json['name'] as String,
  prerequisites:
      (json['prerequisites'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FeatToJson(Feat instance) => <String, dynamic>{
  'description': instance.description,
  'descriptionShort': instance.descriptionShort,
  'name': instance.name,
  'prerequisites': instance.prerequisites.map((e) => e.toJson()).toList(),
};
