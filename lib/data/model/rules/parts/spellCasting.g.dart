// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spellCasting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellCasting _$SpellCastingFromJson(Map<String, dynamic> json) => SpellCasting(
  ability: Ability.fromJson(json['ability'] as String),
  cantripsKnown: (json['cantripsKnown'] as num?)?.toInt() ?? 0,
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  focus: json['focus'] as String? ?? "",
  name: json['name'] as String,
  spellList:
      (json['spellList'] as List<dynamic>?)
          ?.map((e) => Spell.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  spellsKnown: (json['spellsKnown'] as num?)?.toInt() ?? 0,
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
  'cantripsKnown': instance.cantripsKnown,
  'description': instance.description,
  'focus': instance.focus,
  'name': instance.name,
  'spellList': instance.spellList.map((e) => e.toJson()).toList(),
  'spellsKnown': instance.spellsKnown,
  'spellSlots': instance.spellSlots.map((k, e) => MapEntry(k.toString(), e)),
};
