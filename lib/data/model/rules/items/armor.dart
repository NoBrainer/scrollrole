import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/ability.dart';
import 'package:scrollrole/data/model/enum/armor_type.dart';
import 'package:scrollrole/util/log_util.dart';

part 'armor.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Armor extends Equatable {
  final int baseAC; //TODO: rename to baseAc (camelCase)
  final String cost;
  final int? maxModifier;
  final Ability modifier; //TODO: rename to modifierAbility
  final String name;
  final bool stealthDisadv; //TODO: rename without abbreviation
  final int? strengthReq; //TODO: rename without abbreviation
  final ArmorType type;
  final String weight;

  const Armor({
    this.baseAC = 10,
    this.cost = "",
    this.maxModifier,
    this.modifier = Ability.dex,
    required this.name,
    this.stealthDisadv = false,
    this.strengthReq,
    required this.type,
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
      LogUtil.print("Failed to parse Armor!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ArmorToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
