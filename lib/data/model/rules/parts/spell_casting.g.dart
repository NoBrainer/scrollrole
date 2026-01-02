// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_casting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellCasting _$SpellCastingFromJson(Map<String, dynamic> json) => SpellCasting(
  ability: Ability.fromJson(json['ability'] as String),
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  focus: json['focus'] as String?,
  knownCantrips: (json['knownCantrips'] as num?)?.toInt() ?? 0,
  knownSpells: (json['knownSpells'] as num?)?.toInt() ?? 0,
  spellSlots:
      (json['spellSlots'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const {},
);

Map<String, dynamic> _$SpellCastingToJson(SpellCasting instance) =>
    <String, dynamic>{
      'ability': instance.ability.toJson(),
      'description': instance.description,
      'focus': instance.focus,
      'knownCantrips': instance.knownCantrips,
      'knownSpells': instance.knownSpells,
      'spellSlots': instance.spellSlots,
    };
