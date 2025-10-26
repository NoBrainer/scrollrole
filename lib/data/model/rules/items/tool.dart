import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'tool.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Tool extends Equatable {
  final String cost;
  final String name;
  final List<String> tags;
  final String weight;

  //TODO: Update cost to be int (number of copper)
  const Tool({
    this.cost = "",
    required this.name,
    this.tags = const [],
    this.weight = "",
  });

  @override
  List<Object?> get props => [cost, name, tags, weight];

  factory Tool.fromJson(Map<String, dynamic> json) {
    try {
      return _$ToolFromJson(json);
    } catch (e) {
      // debug("Failed to parse Tool!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ToolToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
