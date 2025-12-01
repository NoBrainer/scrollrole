import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/mapper_util.dart';

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
    return MapperUtil.jsonToObject("Equipment", _$EquipmentFromJson, json)
        as Equipment;
  }

  Map<String, dynamic> toJson() => _$EquipmentToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
