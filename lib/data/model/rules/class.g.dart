// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map<String, dynamic> json) => Class(
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
  descriptionShort: json['descriptionShort'] as String? ?? '',
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
  baseHitPoints:
      (json['baseHitPoints'] as num?)?.toInt() ?? Class.defaultBaseHitPoints,
  hitPointDie: json['hitPointDie'] == null
      ? Class.defaultHitPointDie
      : DiceType.fromJson(json['hitPointDie'] as String),
  iconId: json['iconId'] as String? ?? Class.defaultIconId,
  proficiencyBonus:
      (json['proficiencyBonus'] as num?)?.toInt() ??
      Class.defaultProficiencyBonus,
  spellCasting: json['spellCasting'] == null
      ? null
      : SpellCasting.fromJson(json['spellCasting'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
  'choices': instance.choices.map((e) => e.toJson()).toList(),
  'description': instance.description,
  'descriptionShort': instance.descriptionShort,
  'equipment': instance.equipment.map((e) => e.toJson()).toList(),
  'features': instance.features.map((e) => e.toJson()).toList(),
  'name': instance.name,
  'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
  'speed': instance.speed,
  'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
  'suggestedCharacteristics': instance.suggestedCharacteristics?.toJson(),
  'unlockables': instance.unlockables.map((e) => e.toJson()).toList(),
  'variables': instance.variables.map((e) => e.toJson()).toList(),
  'baseHitPoints': instance.baseHitPoints,
  'hitPointDie': instance.hitPointDie.toJson(),
  'iconId': instance.iconId,
  'proficiencyBonus': instance.proficiencyBonus,
  'spellCasting': instance.spellCasting?.toJson(),
};
