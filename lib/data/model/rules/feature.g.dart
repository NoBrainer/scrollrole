// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feature _$FeatureFromJson(Map<String, dynamic> json) => Feature(
  name: json['name'] as String,
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  shortDescription: json['shortDescription'] as String? ?? "",
);

Map<String, dynamic> _$FeatureToJson(Feature instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'shortDescription': instance.shortDescription,
};
