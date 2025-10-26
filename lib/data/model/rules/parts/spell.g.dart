// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Spell _$SpellFromJson(Map<String, dynamic> json) => Spell(
  classes:
      (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  level: (json['level'] as num?)?.toInt() ?? 1,
  name: json['name'] as String,
);

Map<String, dynamic> _$SpellToJson(Spell instance) => <String, dynamic>{
  'classes': instance.classes,
  'level': instance.level,
  'name': instance.name,
};
