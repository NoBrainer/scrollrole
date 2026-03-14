import 'package:scrollrole/util/config/default_json_enum.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'ability.g.dart';

@DefaultJsonEnum()
enum Ability {
  cha('CHA', 'Charisma'),
  con('CON', 'Constitution'),
  dex('DEX', 'Dexterity'),
  int('INT', 'Intelligence'),
  str('STR', 'Strength'),
  wis('WIS', 'Wisdom');

  final String display;
  final String displayLong;

  const Ability(this.display, this.displayLong);

  factory Ability.fromJson(String json) {
    return MapperUtil.jsonToEnum('Ability', _$AbilityEnumMap, json) as Ability;
  }

  String toJson() => _$AbilityEnumMap[this]!;
}
