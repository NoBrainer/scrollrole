import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/parts/ability_score_adjustment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/condition.dart';
import 'package:scrollrole/util/log_util.dart';

part 'unlockable.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Unlockable extends Equatable {
  final List<AbilityScoreAdjustment> abilityScoreAdjustments;
  final List<Choice> choices;
  final Condition condition;
  final List<Feature> features;
  final int proficiencyBonus;
  final List<Proficiency> proficiencies;
  final int speed; //TODO: rename to speedModifier
  final SpellCasting spellCasting;

  const Unlockable({
    this.abilityScoreAdjustments = const [],
    this.choices = const [],
    required this.condition,
    this.features = const [],
    this.proficiencyBonus = 0,
    this.proficiencies = const [],
    this.speed = 0,
    this.spellCasting = SpellCasting.blank,
  });

  @override
  List<Object?> get props => [
    abilityScoreAdjustments,
    choices,
    condition,
    features,
    proficiencyBonus,
    proficiencies,
    speed,
    spellCasting,
  ];

  factory Unlockable.fromJson(Map<String, dynamic> json) {
    try {
      return _$UnlockableFromJson(json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse Unlockable!\n- Error: '$e'\n- Input: $json",
      );
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$UnlockableToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
