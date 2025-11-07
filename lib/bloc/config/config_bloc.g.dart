// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigState _$ConfigStateFromJson(Map<String, dynamic> json) => ConfigState(
  rulesConfig: RulesConfig.fromJson(
    json['rulesConfig'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ConfigStateToJson(ConfigState instance) =>
    <String, dynamic>{'rulesConfig': instance.rulesConfig.toJson()};
