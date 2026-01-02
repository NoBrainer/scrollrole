import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'stat_type.g.dart';

// TODO: Use this to simplify ASI and other stat modification
@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum StatType {
  abilityScore("Ability Score", "Ability Score"),
  hitPoints("HP", "Hit Points"),
  proficiencyBonus("Proficiency Bonus", "Proficiency Bonus"),
  speed("Speed", "Speed");

  final String display;
  final String displayLong;

  const StatType(this.display, this.displayLong);

  factory StatType.fromJson(String json) {
    return MapperUtil.jsonToEnum("StatType", _$StatTypeEnumMap, json)
        as StatType;
  }

  String toJson() => _$StatTypeEnumMap[this]!;
}
