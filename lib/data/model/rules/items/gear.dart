import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'gear.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Gear extends Equatable {
  final String cost;
  final String name;
  final String per;
  final String weight;

  //TODO: Update cost to be int (number of copper)
  const Gear({
    this.cost = "",
    required this.name,
    this.per = "1",
    this.weight = "",
  });

  @override
  List<Object?> get props => [cost, name, per, weight];

  factory Gear.fromJson(Map<String, dynamic> json) {
    try {
      return _$GearFromJson(json);
    } catch (e) {
      // debug("Failed to parse Gear!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$GearToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
