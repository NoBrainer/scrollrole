// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
  allowDuplicate: json['allowDuplicate'] as bool? ?? false,
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  from: json['from'] as Map<String, dynamic>?,
  name: json['name'] as String,
  options: json['options'] as Map<String, dynamic>?,
  pick: (json['pick'] as num?)?.toInt(),
  type: json['type'] as String,
  use: json['use'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
  'allowDuplicate': instance.allowDuplicate,
  'description': instance.description,
  'from': instance.from,
  'name': instance.name,
  'options': instance.options,
  'pick': instance.pick,
  'type': instance.type,
  'use': instance.use,
};
