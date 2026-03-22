import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/util/config/default_json_enum.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'proficiency_type.g.dart';

@DefaultJsonEnum()
enum ProficiencyType implements Comparable<ProficiencyType> {
  armor('Armor', 'Armor Proficiency'),
  language('Language', 'Language Proficiency'),
  savingThrow('Saving Throw', 'Saving Throw Proficiency'),
  skill('Skill', 'Skill Proficiency'),
  tool('Tool', 'Tool Proficiency'),
  weapon('Weapon', 'Weapon Proficiency');

  final String display;
  final String displayLong;

  const ProficiencyType(this.display, this.displayLong);

  factory ProficiencyType.fromJson(String json) {
    return MapperUtil.jsonToEnum(
          'ProficiencyType',
          _$ProficiencyTypeEnumMap,
          json,
        )
        as ProficiencyType;
  }

  String toJson() => _$ProficiencyTypeEnumMap[this]!;

  @override
  int compareTo(other) => display.compareTo(other.display);

  ListOptionType toListOptionType() {
    switch (this) {
      case armor:
        return ListOptionType.proficiencyArmor;
      case language:
        return ListOptionType.proficiencyLanguage;
      case savingThrow:
        return ListOptionType.proficiencySavingThrow;
      case skill:
        return ListOptionType.proficiencySkill;
      case tool:
        return ListOptionType.proficiencyTool;
      case weapon:
        return ListOptionType.proficiencyWeapon;
    }
  }

  bool matchesOptionTypes(List<ListOptionType> types) {
    if (types.isEmpty || types.contains(ListOptionType.proficiency)) {
      return true;
    }
    return types.contains(toListOptionType());
  }
}
