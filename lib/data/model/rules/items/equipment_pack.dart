import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'equipment_pack.g.dart';

@immutable
@JsonSerializable(explicitToJson: true, converters: MapperUtil.commonConverters)
class EquipmentPack extends Equatable {
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

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
