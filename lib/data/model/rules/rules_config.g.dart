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
);

Map<String, dynamic> _$RulesConfigToJson(RulesConfig instance) =>
    <String, dynamic>{
      'backgrounds': instance.backgrounds.map((e) => e.toJson()).toList(),
    };
