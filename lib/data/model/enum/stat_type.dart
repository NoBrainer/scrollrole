import 'package:scrollrole/util/config/default_json_enum.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'stat_type.g.dart';

@DefaultJsonEnum()
enum StatType implements Comparable<StatType> {
  abilityScore('Ability Score', 'Ability Score'),
  hitPoints('HP', 'Hit Points'),
  //TODO: Accomplish HP/LVL in a more generic way
  hitPointsPerLevel('HP Per Level', 'Hit Points Per Level'),
  proficiencyBonus('Proficiency Bonus', 'Proficiency Bonus'),
  speed('Speed', 'Speed');

  final String display;
  final String displayLong;

  const StatType(this.display, this.displayLong);

  factory StatType.fromJson(String json) {
    return MapperUtil.jsonToEnum('StatType', _$StatTypeEnumMap, json)
        as StatType;
  }

  String toJson() => _$StatTypeEnumMap[this]!;

  @override
  int compareTo(other) => display.compareTo(other.display);
}
