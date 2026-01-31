// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
  choices:
      (json['choices'] as List<dynamic>?)
          ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  name: json['name'] as String,
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
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
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'features': instance.features.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'shortDescription': instance.shortDescription,
  'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
  'variables': instance.variables.map((e) => e.toJson()).toList(),
};
