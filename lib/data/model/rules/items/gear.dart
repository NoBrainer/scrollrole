import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'gear.g.dart';

@DefaultJsonSerializable()
class Gear extends Equatable {
  final int cost;
  final String name;
  final String per;
  final String weight;

  const Gear({
    this.cost = 0,
    required this.name,
    this.per = '1',
    this.weight = '',
  });

  @override
  List<Object?> get props => [cost, name, per, weight];

  factory Gear.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Gear', _$GearFromJson, json) as Gear;
  }

  Map<String, dynamic> toJson() => _$GearToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
