import 'package:json_annotation/json_annotation.dart';

part 'armorType.g.dart';

@JsonEnum(alwaysCreate: true)
enum ArmorType {
  @JsonValue("light")
  light("light armor"),
  @JsonValue("medium")
  medium("medium armor"),
  @JsonValue("heavy")
  heavy("heavy armor"),
  @JsonValue("shield")
  shield("shield");

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
