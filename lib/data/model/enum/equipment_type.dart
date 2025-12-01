import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/mapper_util.dart';

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
    return MapperUtil.jsonToEnum("EquipmentType", _$EquipmentTypeEnumMap, json)
        as EquipmentType;
  }

  String toJson() => _$EquipmentTypeEnumMap[this]!;
}
