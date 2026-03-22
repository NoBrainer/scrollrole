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
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  descriptionShort: json['descriptionShort'] == null
      ? ''
      : const StringTrimConverter().fromJson(
          json['descriptionShort'] as String,
        ),
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
  name: const StringTrimConverter().fromJson(json['name'] as String),
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  speed: (json['speed'] as num?)?.toInt(),
  statModifiers:
      (json['statModifiers'] as List<dynamic>?)
          ?.map((e) => StatModifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
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
);

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description
      .map(const StringTrimConverter().toJson)
      .toList(),
  'descriptionShort': const StringTrimConverter().toJson(
    instance.descriptionShort,
  ),
  'equipment': instance.equipment.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'name': const StringTrimConverter().toJson(instance.name),
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'speed': instance.speed,
  'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
  'tags': instance.tags.map(const StringTrimConverter().toJson).toList(),
  'unlockables': instance.unlockables.map((e) => e.toJson()).toList(),
  'variables': instance.variables.map((e) => e.toJson()).toList(),
};
