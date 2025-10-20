// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Background _$BackgroundFromJson(Map<String, dynamic> json) => Background(
  name: json['name'] as String,
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
  equipment:
      (json['equipment'] as List<dynamic>?)
          ?.map((e) => Equipment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  suggestedCharacteristics: json['suggestedCharacteristics'] == null
      ? const SuggestedCharacteristics()
      : SuggestedCharacteristics.fromJson(
          json['suggestedCharacteristics'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BackgroundToJson(Background instance) =>
    <String, dynamic>{
      'name': instance.name,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'equipment': instance.equipment.map((e) => e.toJson()).toList(),
      'features': instance.features.map((e) => e.toJson()).toList(),
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'suggestedCharacteristics': instance.suggestedCharacteristics.toJson(),
    };
