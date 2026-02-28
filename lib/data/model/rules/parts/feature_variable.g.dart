// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeatureVariable _$FeatureVariableFromJson(Map<String, dynamic> json) =>
    FeatureVariable(
      displayName: const StringTrimConverter().fromJson(
        json['displayName'] as String,
      ),
      key: const StringTrimConverter().fromJson(json['key'] as String),
      value: json['value'],
    );

Map<String, dynamic> _$FeatureVariableToJson(FeatureVariable instance) =>
    <String, dynamic>{
      'displayName': const StringTrimConverter().toJson(instance.displayName),
      'key': const StringTrimConverter().toJson(instance.key),
      'value': instance.value,
    };
