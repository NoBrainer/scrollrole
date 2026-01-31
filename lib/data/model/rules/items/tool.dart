import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'tool.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Tool extends Equatable {
  final int cost;
  final String name;
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

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
