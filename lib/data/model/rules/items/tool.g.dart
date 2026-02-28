// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tool _$ToolFromJson(Map<String, dynamic> json) => Tool(
  cost: (json['cost'] as num?)?.toInt() ?? 0,
  name: const StringTrimConverter().fromJson(json['name'] as String),
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  weight: json['weight'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['weight'] as String),
);

Map<String, dynamic> _$ToolToJson(Tool instance) => <String, dynamic>{
  'cost': instance.cost,
  'name': const StringTrimConverter().toJson(instance.name),
  'tags': instance.tags.map(const StringTrimConverter().toJson).toList(),
  'weight': const StringTrimConverter().toJson(instance.weight),
};
