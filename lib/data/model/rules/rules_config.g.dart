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
  description: json['description'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['description'] as String),
  lists: json['lists'] == null
      ? const ConfigLists.blank()
      : ConfigLists.fromJson(json['lists'] as Map<String, dynamic>),
  name: const StringTrimConverter().fromJson(json['name'] as String),
  species:
      (json['species'] as List<dynamic>?)
          ?.map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  url: json['url'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['url'] as String),
  uuid: json['uuid'],
);

Map<String, dynamic> _$RulesConfigToJson(RulesConfig instance) =>
    <String, dynamic>{
      'backgrounds': instance.backgrounds.map((e) => e.toJson()).toList(),
      'classes': instance.classes.map((e) => e.toJson()).toList(),
      'description': const StringTrimConverter().toJson(instance.description),
      'lists': instance.lists.toJson(),
      'name': const StringTrimConverter().toJson(instance.name),
      'species': instance.species.map((e) => e.toJson()).toList(),
      'url': const StringTrimConverter().toJson(instance.url),
      'uuid': const StringTrimConverter().toJson(instance.uuid),
    };
