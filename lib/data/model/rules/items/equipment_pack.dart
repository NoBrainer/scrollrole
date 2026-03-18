import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'equipment_pack.g.dart';

@DefaultJsonSerializable()
class EquipmentPack extends Equatable implements Comparable<EquipmentPack> {
  final String name;
  final List<Equipment> items;

  const EquipmentPack({required this.name, this.items = const []});

  @override
  List<Object?> get props => [name, items];

  factory EquipmentPack.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'EquipmentPack',
          _$EquipmentPackFromJson,
          json,
        )
        as EquipmentPack;
  }

  Map<String, dynamic> toJson() => _$EquipmentPackToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
