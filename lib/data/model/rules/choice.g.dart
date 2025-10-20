// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
  name: json['name'] as String,
  type: json['type'] as String,
  allowDuplicate: json['allowDuplicate'] as bool? ?? false,
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  from: json['from'] as Map<String, dynamic>?,
  options: json['options'] as Map<String, dynamic>?,
  pick: (json['pick'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'allowDuplicate': instance.allowDuplicate,
  'description': instance.description,
  'from': instance.from,
  'options': instance.options,
  'pick': instance.pick,
};
