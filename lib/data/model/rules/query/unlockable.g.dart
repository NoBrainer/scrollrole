// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlockable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Unlockable _$UnlockableFromJson(Map<String, dynamic> json) => Unlockable(
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
  condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  proficiencyBonus: (json['proficiencyBonus'] as num?)?.toInt() ?? 0,
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  speed: (json['speed'] as num?)?.toInt() ?? 0,
  spellCasting: json['spellCasting'] == null
      ? SpellCasting.blank
      : SpellCasting.fromJson(json['spellCasting'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UnlockableToJson(Unlockable instance) =>
    <String, dynamic>{
      'abilityScoreAdjustments': instance.abilityScoreAdjustments
          .map((e) => e.toJson())
          .toList(),
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'condition': instance.condition.toJson(),
      'features': instance.features.map((e) => e.toJson()).toList(),
      'proficiencyBonus': instance.proficiencyBonus,
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'speed': instance.speed,
      'spellCasting': instance.spellCasting.toJson(),
    };
