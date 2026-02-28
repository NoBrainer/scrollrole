// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListQuery _$ListQueryFromJson(Map<String, dynamic> json) => ListQuery(
  classes:
      (json['classes'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  levels:
      (json['levels'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  list: const StringTrimConverter().fromJson(json['list'] as String),
  requiredTags:
      (json['requiredTags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  types:
      (json['types'] as List<dynamic>?)
          ?.map(
            (e) => ListOptionType.fromJson(
              const StringTrimConverter().fromJson(e as String),
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$ListQueryToJson(ListQuery instance) => <String, dynamic>{
  'classes': instance.classes.map(const StringTrimConverter().toJson).toList(),
  'levels': instance.levels,
  'list': const StringTrimConverter().toJson(instance.list),
  'requiredTags': instance.requiredTags
      .map(const StringTrimConverter().toJson)
      .toList(),
  'tags': instance.tags.map(const StringTrimConverter().toJson).toList(),
  'types': instance.types.map((e) => e.toJson()).toList(),
};
