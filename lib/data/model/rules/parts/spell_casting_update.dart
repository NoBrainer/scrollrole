import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'spell_casting_update.g.dart';

@DefaultJsonSerializable()
class SpellCastingUpdate extends Equatable {
  final int? knownCantrips;
  final int? knownSpells;
  final Map<String, int> spellSlots;

  const SpellCastingUpdate({
    this.knownCantrips,
    this.knownSpells,
    this.spellSlots = const {},
  });

  @override
  List<Object?> get props => [knownCantrips, knownSpells, spellSlots];

  factory SpellCastingUpdate.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'SpellCastingUpdate',
          _$SpellCastingUpdateFromJson,
          json,
        )
        as SpellCastingUpdate;
  }

  Map<String, dynamic> toJson() => _$SpellCastingUpdateToJson(this);

  String toJsonString() => jsonEncode(toJson());
}
