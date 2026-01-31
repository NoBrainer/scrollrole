import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'spell.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Spell extends Equatable {
  final List<String> classes;
  final int level;
  final String name;

  const Spell({this.classes = const [], this.level = 1, required this.name});

  @override
  List<Object?> get props => [classes, level, name];

  factory Spell.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Spell', _$SpellFromJson, json) as Spell;
  }

  Map<String, dynamic> toJson() => _$SpellToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
