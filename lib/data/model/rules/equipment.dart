import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'equipment.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Equipment extends Equatable {
  final String name;
  final double quantity;

  const Equipment({required this.name, this.quantity = 1});

  @override
  List<Object?> get props => [name, quantity];

  factory Equipment.fromJson(Map<String, dynamic> json) {
    try {
      return _$EquipmentFromJson(json);
    } catch (e) {
      // debug("Failed to parse Equipment!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$EquipmentToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
