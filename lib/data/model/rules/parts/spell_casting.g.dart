// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_casting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpellCasting _$SpellCastingFromJson(Map<String, dynamic> json) => SpellCasting(
  ability: Ability.fromJson(
    const StringTrimConverter().fromJson(json['ability'] as String),
  ),
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  focus: _$JsonConverterFromJson<String, String>(
    json['focus'],
    const StringTrimConverter().fromJson,
  ),
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
      'description': instance.description
          .map(const StringTrimConverter().toJson)
          .toList(),
      'focus': _$JsonConverterToJson<String, String>(
        instance.focus,
        const StringTrimConverter().toJson,
      ),
      'knownCantrips': instance.knownCantrips,
      'knownSpells': instance.knownSpells,
      'spellSlots': instance.spellSlots.map(
        (k, e) => MapEntry(const StringTrimConverter().toJson(k), e),
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
