// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
  and:
      (json['and'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  atLevels: (json['atLevels'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  hasBackground: _$JsonConverterFromJson<String, String>(
    json['hasBackground'],
    const StringTrimConverter().fromJson,
  ),
  hasClass: _$JsonConverterFromJson<String, String>(
    json['hasClass'],
    const StringTrimConverter().fromJson,
  ),
  hasFeat: _$JsonConverterFromJson<String, String>(
    json['hasFeat'],
    const StringTrimConverter().fromJson,
  ),
  hasFeature: _$JsonConverterFromJson<String, String>(
    json['hasFeature'],
    const StringTrimConverter().fromJson,
  ),
  hasProficiencies:
      (json['hasProficiencies'] as List<dynamic>?)
          ?.map((e) => ProficiencyCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hasSpecies: _$JsonConverterFromJson<String, String>(
    json['hasSpecies'],
    const StringTrimConverter().fromJson,
  ),
  hasStats:
      (json['hasStats'] as List<dynamic>?)
          ?.map((e) => StatCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  or:
      (json['or'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
  'atLevels': instance.atLevels,
  'hasBackground': _$JsonConverterToJson<String, String>(
    instance.hasBackground,
    const StringTrimConverter().toJson,
  ),
  'hasClass': _$JsonConverterToJson<String, String>(
    instance.hasClass,
    const StringTrimConverter().toJson,
  ),
  'hasFeat': _$JsonConverterToJson<String, String>(
    instance.hasFeat,
    const StringTrimConverter().toJson,
  ),
  'hasFeature': _$JsonConverterToJson<String, String>(
    instance.hasFeature,
    const StringTrimConverter().toJson,
  ),
  'hasProficiencies': instance.hasProficiencies.map((e) => e.toJson()).toList(),
  'hasSpecies': _$JsonConverterToJson<String, String>(
    instance.hasSpecies,
    const StringTrimConverter().toJson,
  ),
  'hasStats': instance.hasStats.map((e) => e.toJson()).toList(),
  'and': instance.and.map((e) => e.toJson()).toList(),
  'or': instance.or.map((e) => e.toJson()).toList(),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
