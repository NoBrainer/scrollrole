import 'package:json_annotation/json_annotation.dart';

part 'ability.g.dart';

@JsonEnum(alwaysCreate: true)
enum Ability {
  @JsonValue("CHA")
  cha("CHA"),
  @JsonValue("CON")
  con("CON"),
  @JsonValue("DEX")
  dex("DEX"),
  @JsonValue("INT")
  int("INT"),
  @JsonValue("STR")
  str("STR"),
  @JsonValue("WIS")
  wis("WIS");

  final String display;

  const Ability(this.display);

  factory Ability.fromJson(String str) {
    try {
      return $enumDecode(_$AbilityEnumMap, str);
    } catch (e) {
      // debug("Failed to parse Ability!\n"
      //     "- Error: '$e'\n- Input: '$str'");
      rethrow;
    }
  }

  String toJson() => _$AbilityEnumMap[this]!;
}
