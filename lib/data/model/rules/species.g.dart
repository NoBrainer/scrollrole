// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Species _$SpeciesFromJson(Map<String, dynamic> json) => Species(
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
  name: json['name'] as String,
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  shortDescription: json['shortDescription'] as String? ?? '',
  speed: (json['speed'] as num?)?.toInt(),
  statModifiers:
      (json['statModifiers'] as List<dynamic>?)
          ?.map((e) => StatModifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  suggestedCharacteristics: json['suggestedCharacteristics'] == null
      ? null
      : SuggestedCharacteristics.fromJson(
          json['suggestedCharacteristics'] as Map<String, dynamic>,
        ),
  unlockables:
      (json['unlockables'] as List<dynamic>?)
          ?.map((e) => Unlockable.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  variables:
      (json['variables'] as List<dynamic>?)
          ?.map((e) => FeatureVariable.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  iconId: json['iconId'] as String? ?? Species.defaultIconId,
);

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'equipment': instance.equipment.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'shortDescription': instance.shortDescription,
  'speed': instance.speed,
  'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
  'suggestedCharacteristics': instance.suggestedCharacteristics?.toJson(),
  'unlockables': instance.unlockables.map((e) => e.toJson()).toList(),
  'variables': instance.variables.map((e) => e.toJson()).toList(),
  'iconId': instance.iconId,
};
