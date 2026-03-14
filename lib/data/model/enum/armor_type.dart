import 'package:scrollrole/util/config/default_json_enum.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'armor_type.g.dart';

@DefaultJsonEnum()
enum ArmorType {
  light('Light', 'Light Armor'),
  medium('Medium', 'Medium Armor'),
  heavy('Heavy', 'Heavy Armor'),
  shield('Shield', 'Shield');

  final String display;
  final String displayLong;

  const ArmorType(this.display, this.displayLong);

  factory ArmorType.fromJson(String json) {
    return MapperUtil.jsonToEnum('ArmorType', _$ArmorTypeEnumMap, json)
        as ArmorType;
  }

  String toJson() => _$ArmorTypeEnumMap[this]!;
}
