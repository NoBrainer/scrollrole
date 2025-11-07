import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'equipment_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum EquipmentType {
  @JsonValue("armor")
  armor("Armor"),
  @JsonValue("gear")
  gear("Gear"),
  @JsonValue("weapon")
  weapon("Weapon"),
  @JsonValue("tool")
  tool("Tool");

  final String display;

  const EquipmentType(this.display);

  factory EquipmentType.fromJson(String str) {
    try {
      return $enumDecode(_$EquipmentTypeEnumMap, str);
    } catch (e) {
      LogUtil.print(
        "Failed to parse EquipmentType!\n"
        "- Error: '$e'\n- Input: '$str'",
      );
      rethrow;
    }
  }

  String toJson() => _$EquipmentTypeEnumMap[this]!;
}
