// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlockable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Unlockable _$UnlockableFromJson(Map<String, dynamic> json) => Unlockable(
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
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  spellCasting: json['spellCasting'] == null
      ? null
      : SpellCasting.fromJson(json['spellCasting'] as Map<String, dynamic>),
  spellCastingUpdate: json['spellCastingUpdate'] == null
      ? null
      : SpellCastingUpdate.fromJson(
          json['spellCastingUpdate'] as Map<String, dynamic>,
        ),
  statModifiers:
      (json['statModifiers'] as List<dynamic>?)
          ?.map((e) => StatModifier.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$UnlockableToJson(Unlockable instance) =>
    <String, dynamic>{
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'condition': instance.condition.toJson(),
      'features': instance.features.map((e) => e.toJson()).toList(),
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'spellCasting': instance.spellCasting?.toJson(),
      'spellCastingUpdate': instance.spellCastingUpdate?.toJson(),
      'statModifiers': instance.statModifiers.map((e) => e.toJson()).toList(),
    };
