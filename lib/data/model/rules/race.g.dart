// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Race _$RaceFromJson(Map<String, dynamic> json) => Race(
  abilityScoreAdjustments:
      (json['abilityScoreAdjustments'] as List<dynamic>?)
          ?.map(
            (e) => AbilityScoreAdjustment.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
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
  speed: (json['speed'] as num?)?.toInt() ?? 30,
  suggestedCharacteristics: json['suggestedCharacteristics'] == null
      ? SuggestedCharacteristics.blank
      : SuggestedCharacteristics.fromJson(
          json['suggestedCharacteristics'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$RaceToJson(Race instance) => <String, dynamic>{
  'abilityScoreAdjustments': instance.abilityScoreAdjustments
      .map((e) => e.toJson())
      .toList(),
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'equipment': instance.equipment.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'speed': instance.speed,
  'suggestedCharacteristics': instance.suggestedCharacteristics.toJson(),
};
