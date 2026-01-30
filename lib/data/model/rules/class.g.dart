// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map<String, dynamic> json) => Class(
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
  hitPointDie: json['hitPointDie'] == null
      ? DiceType.d8
      : DiceType.fromJson(json['hitPointDie'] as String),
  iconId: json['iconId'] as String? ?? Class.defaultIconId,
  name: json['name'] as String,
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  proficiencyBonus: (json['proficiencyBonus'] as num?)?.toInt() ?? 2,
  speed: (json['speed'] as num?)?.toInt(),
  spellCasting: json['spellCasting'] == null
      ? null
      : SpellCasting.fromJson(json['spellCasting'] as Map<String, dynamic>),
  statModifiers:
      (json['statModifiers'] as List<dynamic>?)
          ?.map((e) => StatModifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  suggestedCharacteristics: json['suggestedCharacteristics'] == null
      ? const SuggestedCharacteristics.blank()
      : SuggestedCharacteristics.fromJson(
          json['suggestedCharacteristics'] as Map<String, dynamic>,
        ),
  unlockables:
      (json['unlockables'] as List<dynamic>?)
          ?.map((e) => Unlockable.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
  'baseHitPoints': instance.baseHitPoints,
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'equipment': instance.equipment.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'hitPointDie': instance.hitPointDie.toJson(),
  'iconId': instance.iconId,
  'name': instance.name,
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'proficiencyBonus': instance.proficiencyBonus,
  'speed': instance.speed,
  'spellCasting': instance.spellCasting?.toJson(),
  'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
  'suggestedCharacteristics': instance.suggestedCharacteristics.toJson(),
  'unlockables': instance.unlockables.map((e) => e.toJson()).toList(),
};
