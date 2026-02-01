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
  hasProficiency: json['hasProficiency'] as String?,
  hasProficiencyArmor: json['hasProficiencyArmor'] as String?,
  hasProficiencyLanguage: json['hasProficiencyLanguage'] as String?,
  hasProficiencySavingThrow: json['hasProficiencySavingThrow'] as String?,
  hasProficiencySkill: json['hasProficiencySkill'] as String?,
  hasProficiencyTool: json['hasProficiencyTool'] as String?,
  hasProficiencyWeapon: json['hasProficiencyWeapon'] as String?,
  hasSpecies: json['hasSpecies'] as String?,
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
  'hasProficiency': instance.hasProficiency,
  'hasProficiencyArmor': instance.hasProficiencyArmor,
  'hasProficiencyLanguage': instance.hasProficiencyLanguage,
  'hasProficiencySavingThrow': instance.hasProficiencySavingThrow,
  'hasProficiencySkill': instance.hasProficiencySkill,
  'hasProficiencyTool': instance.hasProficiencyTool,
  'hasProficiencyWeapon': instance.hasProficiencyWeapon,
  'hasSpecies': instance.hasSpecies,
  'and': instance.and.map((e) => e.toJson()).toList(),
  'or': instance.or.map((e) => e.toJson()).toList(),
};
