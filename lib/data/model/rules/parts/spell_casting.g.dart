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
  focus: json['focus'] as String? ?? "",
  knownCantrips: (json['knownCantrips'] as num?)?.toInt() ?? 0,
  knownSpells: (json['knownSpells'] as num?)?.toInt() ?? 0,
  name: json['name'] as String,
  spells:
      (json['spells'] as List<dynamic>?)
          ?.map((e) => Spell.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  spellSlots:
      (json['spellSlots'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
      ) ??
      const {},
);

Map<String, dynamic> _$SpellCastingToJson(
  SpellCasting instance,
) => <String, dynamic>{
  'ability': instance.ability.toJson(),
  'description': instance.description,
  'focus': instance.focus,
  'knownCantrips': instance.knownCantrips,
  'knownSpells': instance.knownSpells,
  'name': instance.name,
  'spells': instance.spells.map((e) => e.toJson()).toList(),
  'spellSlots': instance.spellSlots.map((k, e) => MapEntry(k.toString(), e)),
};
