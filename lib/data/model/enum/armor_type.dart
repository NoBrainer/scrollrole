import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'armor_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ArmorType {
  light("Light", "Light Armor"),
  medium("Medium", "Medium Armor"),
  heavy("Heavy", "Heavy Armor"),
  shield("Shield", "Shield");

  final String display;
  final String displayLong;

  const ArmorType(this.display, this.displayLong);

  factory ArmorType.fromJson(String json) {
    try {
      json = json.toUpperCase();
      return $enumDecode(_$ArmorTypeEnumMap, json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse ArmorType!\n"
        "- Error: '$e'\n- Input: '$json'",
      );
      rethrow;
    }
  }

  String toJson() => _$ArmorTypeEnumMap[this]!;
}
