import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/ability.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'spell_casting.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class SpellCasting extends Equatable {
  final Ability ability;
  final List<String> description;
  final String? focus;
  final int knownCantrips;
  final int knownSpells;
  final Map<String, int> spellSlots;

  const SpellCasting({
    required this.ability,
    this.description = const [],
    this.focus,
    this.knownCantrips = 0,
    this.knownSpells = 0,
    this.spellSlots = const {},
  });

  @override
  List<Object?> get props => [
    ability,
    description,
    focus,
    knownCantrips,
    knownSpells,
    spellSlots,
  ];

  factory SpellCasting.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('SpellCasting', _$SpellCastingFromJson, json)
        as SpellCasting;
  }

  Map<String, dynamic> toJson() => _$SpellCastingToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
