import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';

part 'equipment_pack.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class EquipmentPack extends Equatable {
  final String name;
  final List<Equipment> items;

  const EquipmentPack({required this.name, this.items = const []});

  @override
  List<Object?> get props => [name, items];

  factory EquipmentPack.fromJson(Map<String, dynamic> json) {
    try {
      return _$EquipmentPackFromJson(json);
    } catch (e) {
      // debug("Failed to parse EquipmentPack!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$EquipmentPackToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
