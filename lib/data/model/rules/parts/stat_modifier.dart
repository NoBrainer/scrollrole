import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/enum/stat_type.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'stat_modifier.g.dart';

@DefaultJsonSerializable()
class StatModifier extends Equatable implements Comparable<StatModifier> {
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

  String toJsonString() => jsonEncode(toJson());

  String toDisplay() {
    String sign = modifier >= 0 ? '+' : '';
    return '$sign$modifier $name';
  }

  @override
  int compareTo(other) => name.compareTo(other.name);
}
