import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'armor.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Armor extends Equatable {
  final int baseAC; //TODO: rename to baseAc (camelCase)
  final String cost;
  final int? maxModifier;
  final String modifier; //TODO: update type to enum, rename to modifierAbility
  final String name;
  final bool stealthDisadv; //TODO: rename without abbreviation
  final int? strengthReq; //TODO: rename without abbreviation
  final String type; //TODO: update type to enum (light, medium, heavy, shield)
  final String weight;

  const Armor({
    this.baseAC = 10,
    this.cost = "",
    this.maxModifier,
    this.modifier = "DEX",
    required this.name,
    this.stealthDisadv = false,
    this.strengthReq,
    this.type = "",
    this.weight = "",
  });

  @override
  List<Object?> get props => [
    baseAC,
    cost,
    maxModifier,
    modifier,
    name,
    stealthDisadv,
    strengthReq,
    type,
    weight,
  ];

  factory Armor.fromJson(Map<String, dynamic> json) {
    try {
      return _$ArmorFromJson(json);
    } catch (e) {
      // debug("Failed to parse Armor!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ArmorToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
