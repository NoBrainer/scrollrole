import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'weapon.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Weapon extends Equatable {
  final String cost;
  final int damage;
  final String damageType;
  final String name;
  final String range;
  final List<String> tags;
  final String versatileDamage;
  final String weight;

  //TODO: Update cost to be int (number of copper)
  //TODO: Update range to be int
  //TODO: Add rangeUnits as string with default "ft"
  const Weapon({
    this.cost = "",
    this.damage = 1,
    this.damageType = "",
    required this.name,
    this.range = "",
    this.tags = const [],
    this.versatileDamage = "",
    this.weight = "",
  });

  @override
  List<Object?> get props => [
    cost,
    damage,
    damageType,
    name,
    range,
    tags,
    versatileDamage,
    weight,
  ];

  factory Weapon.fromJson(Map<String, dynamic> json) {
    try {
      return _$WeaponFromJson(json);
    } catch (e) {
      // debug("Failed to parse Weapon!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$WeaponToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
