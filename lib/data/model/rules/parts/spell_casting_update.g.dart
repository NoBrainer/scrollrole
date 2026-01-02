// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_casting_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellCastingUpdate _$SpellCastingUpdateFromJson(Map<String, dynamic> json) =>
    SpellCastingUpdate(
      knownCantrips: (json['knownCantrips'] as num?)?.toInt(),
      knownSpells: (json['knownSpells'] as num?)?.toInt(),
      spellSlots:
          (json['spellSlots'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
    );

Map<String, dynamic> _$SpellCastingUpdateToJson(SpellCastingUpdate instance) =>
    <String, dynamic>{
      'knownCantrips': instance.knownCantrips,
      'knownSpells': instance.knownSpells,
      'spellSlots': instance.spellSlots,
    };
