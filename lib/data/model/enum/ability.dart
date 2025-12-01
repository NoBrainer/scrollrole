import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'ability.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum Ability {
  cha("CHA", "Charisma"),
  con("CON", "Constitution"),
  dex("DEX", "Dexterity"),
  int("INT", "Intelligence"),
  str("STR", "Strength"),
  wis("WIS", "Wisdom");

  final String display;
  final String displayLong;

  const Ability(this.display, this.displayLong);

  factory Ability.fromJson(String json) {
    try {
      json = json.toUpperCase();
      return $enumDecode(_$AbilityEnumMap, json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse Ability!\n"
        "- Error: '$e'\n- Input: '$json'",
      );
      rethrow;
    }
  }

  String toJson() => _$AbilityEnumMap[this]!;
}
