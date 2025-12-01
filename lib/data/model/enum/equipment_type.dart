import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'equipment_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum EquipmentType {
  armor("Armor"),
  gear("Gear"),
  weapon("Weapon"),
  tool("Tool");

  final String display;

  const EquipmentType(this.display);

  factory EquipmentType.fromJson(String json) {
    try {
      json = json.toUpperCase();
      return $enumDecode(_$EquipmentTypeEnumMap, json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse EquipmentType!\n"
        "- Error: '$e'\n- Input: '$json'",
      );
      rethrow;
    }
  }

  String toJson() => _$EquipmentTypeEnumMap[this]!;
}
