// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map<String, dynamic> json) => Class(
  name: json['name'] as String,
  abilityScoreImprovementLevels:
      (json['abilityScoreImprovementLevels'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  baseHitPoints: (json['baseHitPoints'] as num?)?.toInt() ?? 10,
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
  hitDice: json['hitDice'] as String? ?? "D8",
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  proficiencyBonus: (json['proficiencyBonus'] as num?)?.toInt() ?? 2,
  spellCasting: json['spellCasting'] as Map<String, dynamic>? ?? const {},
  unlockables: json['unlockables'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
  'name': instance.name,
  'abilityScoreImprovementLevels': instance.abilityScoreImprovementLevels,
  'baseHitPoints': instance.baseHitPoints,
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'equipment': instance.equipment.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'hitDice': instance.hitDice,
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'proficiencyBonus': instance.proficiencyBonus,
  'spellCasting': instance.spellCasting,
  'unlockables': instance.unlockables,
};
