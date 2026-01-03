// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  name: json['name'] as String,
  shortDescription: json['shortDescription'] as String? ?? "",
  statModifiers:
      (json['statModifiers'] as List<dynamic>?)
          ?.map((e) => StatModifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  variables:
      (json['variables'] as List<dynamic>?)
          ?.map((e) => FeatureVariable.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
  'description': instance.description,
  'name': instance.name,
  'shortDescription': instance.shortDescription,
  'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
  'variables': instance.variables.map((e) => e.toJson()).toList(),
};
