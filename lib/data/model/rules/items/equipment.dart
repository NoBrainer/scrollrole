import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'equipment.g.dart';

@DefaultJsonSerializable()
class Equipment extends Equatable implements Comparable<Equipment> {
  final String name;
  final double quantity;
  final String? units;

  const Equipment({required this.name, this.quantity = 1, this.units});

  @override
  List<Object?> get props => [name, quantity, units];

  factory Equipment.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Equipment', _$EquipmentFromJson, json)
        as Equipment;
  }

  Map<String, dynamic> toJson() => _$EquipmentToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
