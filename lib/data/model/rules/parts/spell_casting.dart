import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/ability.dart';
import 'package:scrollrole/data/model/rules/parts/spell.dart';

part 'spell_casting.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class SpellCasting extends Equatable {
  final Ability ability;
  final int cantripsKnown;
  final List<String> description;
  final String focus;
  final String name;
  final List<Spell> spellList; //TODO: Rename to availableSpells or spells
  final int spellsKnown;
  final Map<int, int> spellSlots;

  static const SpellCasting blank = SpellCasting(
    ability: Ability.int,
    name: "Spell Casting",
  );

  const SpellCasting({
    required this.ability,
    this.cantripsKnown = 0,
    this.description = const [],
    this.focus = "",
    required this.name,
    this.spellList = const [],
    this.spellsKnown = 0,
    this.spellSlots = const {},
  });

  @override
  List<Object?> get props => [
    ability,
    cantripsKnown,
    description,
    focus,
    name,
    spellList,
    spellsKnown,
    spellSlots,
  ];

  factory SpellCasting.fromJson(Map<String, dynamic> json) {
    try {
      return _$SpellCastingFromJson(json);
    } catch (e) {
      // debug("Failed to parse SpellCasting!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$SpellCastingToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
