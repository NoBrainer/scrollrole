import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'weapon.g.dart';

@DefaultJsonSerializable()
class Weapon extends Equatable implements Comparable<Weapon> {
  final int cost;
  final String damage;
  final String damageType;
  final String name;
  final int range;
  final String rangeUnits;
  final int rangeWithDisadvantage;
  final List<String> tags;
  final String versatileDamage;
  final String weight;

  const Weapon({
    this.cost = 0,
    this.damage = '1d6',
    this.damageType = '',
    required this.name,
    this.range = 0,
    this.rangeUnits = 'ft',
    this.rangeWithDisadvantage = 0,
    this.tags = const [],
    this.versatileDamage = '',
    this.weight = '',
  });

  @override
  List<Object?> get props => [
    cost,
    damage,
    damageType,
    name,
    range,
    rangeUnits,
    rangeWithDisadvantage,
    tags,
    versatileDamage,
    weight,
  ];

  factory Weapon.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Weapon', _$WeaponFromJson, json) as Weapon;
  }

  Map<String, dynamic> toJson() => _$WeaponToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }

  @override
  int compareTo(other) => name.compareTo(other.name);
}
