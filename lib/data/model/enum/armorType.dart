import 'package:json_annotation/json_annotation.dart';

part 'armorType.g.dart';

@JsonEnum(alwaysCreate: true)
enum ArmorType {
  @JsonValue("light")
  light("Light Armor"),
  @JsonValue("medium")
  medium("Medium Armor"),
  @JsonValue("heavy")
  heavy("Heavy Armor"),
  @JsonValue("shield")
  shield("Shield");

  final String display;

  const ArmorType(this.display);

  factory ArmorType.fromJson(String str) {
    try {
      return $enumDecode(_$ArmorTypeEnumMap, str);
    } catch (e) {
      // debug("Failed to parse ArmorType!\n"
      //     "- Error: '$e'\n- Input: '$str'");
      rethrow;
    }
  }

  String toJson() => _$ArmorTypeEnumMap[this]!;
}
