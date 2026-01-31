import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/stat_type.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'stat_modifier.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class StatModifier extends Equatable {
  final int modifier;
  final String name;
  final StatType type;

  const StatModifier({
    required this.modifier,
    required this.name,
    required this.type,
  });

  @override
  List<Object?> get props => [modifier, name, type];

  factory StatModifier.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('StatModifier', _$StatModifierFromJson, json)
        as StatModifier;
  }

  Map<String, dynamic> toJson() => _$StatModifierToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
