import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/ability.dart';

part 'abilityScoreAdjustment.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class AbilityScoreAdjustment extends Equatable {
  final Ability ability;
  final int modifier;

  const AbilityScoreAdjustment({required this.ability, required this.modifier});

  @override
  List<Object?> get props => [ability, modifier];

  factory AbilityScoreAdjustment.fromJson(Map<String, dynamic> json) {
    try {
      return _$AbilityScoreAdjustmentFromJson(json);
    } catch (e) {
      // debug("Failed to parse AbilityScoreAdjustment!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$AbilityScoreAdjustmentToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
