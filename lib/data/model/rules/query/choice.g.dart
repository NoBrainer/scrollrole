// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
  allowDuplicate: json['allowDuplicate'] as bool? ?? false,
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  name: const StringTrimConverter().fromJson(json['name'] as String),
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => ListOption.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pick: (json['pick'] as num?)?.toInt() ?? 1,
  query: json['query'] == null
      ? null
      : ListQuery.fromJson(json['query'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
  'allowDuplicate': instance.allowDuplicate,
  'description': instance.description
      .map(const StringTrimConverter().toJson)
      .toList(),
  'name': const StringTrimConverter().toJson(instance.name),
  'options': instance.options.map((e) => e.toJson()).toList(),
  'pick': instance.pick,
  'query': instance.query?.toJson(),
};
