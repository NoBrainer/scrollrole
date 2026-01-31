// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RulesConfig _$RulesConfigFromJson(Map<String, dynamic> json) => RulesConfig(
  backgrounds:
      (json['backgrounds'] as List<dynamic>?)
          ?.map((e) => Background.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  classes:
      (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  lists: json['lists'] == null
      ? const ConfigLists.blank()
      : ConfigLists.fromJson(json['lists'] as Map<String, dynamic>),
  species:
      (json['species'] as List<dynamic>?)
          ?.map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RulesConfigToJson(RulesConfig instance) =>
    <String, dynamic>{
      'backgrounds': instance.backgrounds.map((e) => e.toJson()).toList(),
      'classes': instance.classes.map((e) => e.toJson()).toList(),
      'lists': instance.lists.toJson(),
      'species': instance.species.map((e) => e.toJson()).toList(),
    };
