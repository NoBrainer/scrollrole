import 'package:scrollrole/util/config/default_json_enum.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'equipment_type.g.dart';

@DefaultJsonEnum()
enum EquipmentType implements Comparable<EquipmentType> {
  armor('Armor'),
  gear('Gear'),
  weapon('Weapon'),
  tool('Tool');

  final String display;

  const EquipmentType(this.display);

  factory EquipmentType.fromJson(String json) {
    return MapperUtil.jsonToEnum('EquipmentType', _$EquipmentTypeEnumMap, json)
        as EquipmentType;
  }

  String toJson() => _$EquipmentTypeEnumMap[this]!;

  @override
  int compareTo(other) => display.compareTo(other.display);
}
