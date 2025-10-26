// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSelector _$ListSelectorFromJson(Map<String, dynamic> json) => ListSelector(
  classes:
      (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  levels:
      (json['levels'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  name: json['name'] as String,
  requiredTags:
      (json['requiredTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  types:
      (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$ListSelectorToJson(ListSelector instance) =>
    <String, dynamic>{
      'classes': instance.classes,
      'levels': instance.levels,
      'name': instance.name,
      'requiredTags': instance.requiredTags,
      'tags': instance.tags,
      'types': instance.types,
    };
