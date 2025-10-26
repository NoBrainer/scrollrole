// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tool _$ToolFromJson(Map<String, dynamic> json) => Tool(
  cost: json['cost'] as String? ?? "",
  name: json['name'] as String,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  weight: json['weight'] as String? ?? "",
);

Map<String, dynamic> _$ToolToJson(Tool instance) => <String, dynamic>{
  'cost': instance.cost,
  'name': instance.name,
  'tags': instance.tags,
  'weight': instance.weight,
};
