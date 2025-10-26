// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
  isExotic: json['isExotic'] as bool? ?? false,
  name: json['name'] as String,
  script: json['script'] as String? ?? "",
  typicalUsers:
      (json['typicalUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
  'isExotic': instance.isExotic,
  'name': instance.name,
  'script': instance.script,
  'typicalUsers': instance.typicalUsers,
};
