// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
  isExotic: json['isExotic'] as bool? ?? false,
  name: const StringTrimConverter().fromJson(json['name'] as String),
  script: json['script'] == null
      ? ''
      : const StringTrimConverter().fromJson(json['script'] as String),
  typicalUsers:
      (json['typicalUsers'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
);

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
  'isExotic': instance.isExotic,
  'name': const StringTrimConverter().toJson(instance.name),
  'script': const StringTrimConverter().toJson(instance.script),
  'typicalUsers': instance.typicalUsers
      .map(const StringTrimConverter().toJson)
      .toList(),
};
