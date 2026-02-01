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
  hasBackground: json['hasBackground'] as String?,
  hasClass: json['hasClass'] as String?,
  hasFeat: json['hasFeat'] as String?,
  hasFeature: json['hasFeature'] as String?,
  hasProficiencies:
      (json['hasProficiencies'] as List<dynamic>?)
          ?.map((e) => ProficiencyCondition.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hasSpecies: json['hasSpecies'] as String?,
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
  'hasBackground': instance.hasBackground,
  'hasClass': instance.hasClass,
  'hasFeat': instance.hasFeat,
  'hasFeature': instance.hasFeature,
  'hasProficiencies': instance.hasProficiencies.map((e) => e.toJson()).toList(),
  'hasSpecies': instance.hasSpecies,
  'hasStats': instance.hasStats.map((e) => e.toJson()).toList(),
  'and': instance.and.map((e) => e.toJson()).toList(),
  'or': instance.or.map((e) => e.toJson()).toList(),
};
