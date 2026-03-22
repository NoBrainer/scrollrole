import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/rules/interface/taggable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'tool.g.dart';

@DefaultJsonSerializable()
class Tool extends Equatable implements Comparable<Tool>, Taggable {
  final int cost;
  final String name;
  @override
  final List<String> tags;
  final String weight;

  const Tool({
    this.cost = 0,
    required this.name,
    this.tags = const [],
    this.weight = '',
  });

  @override
  List<Object?> get props => [cost, name, tags, weight];

  factory Tool.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Tool', _$ToolFromJson, json) as Tool;
  }

  Map<String, dynamic> toJson() => _$ToolToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
