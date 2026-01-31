import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting_update.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/condition.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'unlockable.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Unlockable extends Equatable {
  final List<Choice> choices;
  final Condition condition;
  final List<Feature> features;
  final List<Proficiency> proficiencies;
  final SpellCasting? spellCasting;
  final SpellCastingUpdate? spellCastingUpdate;
  final List<StatModifier> statModifiers;

  const Unlockable({
    this.choices = const [],
    required this.condition,
    this.features = const [],
    this.proficiencies = const [],
    this.spellCasting,
    this.spellCastingUpdate,
    this.statModifiers = const [],
  });

  @override
  List<Object?> get props => [
    choices,
    condition,
    features,
    proficiencies,
    spellCasting,
    spellCastingUpdate,
    statModifiers,
  ];

  factory Unlockable.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Unlockable', _$UnlockableFromJson, json)
        as Unlockable;
  }

  Map<String, dynamic> toJson() => _$UnlockableToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
