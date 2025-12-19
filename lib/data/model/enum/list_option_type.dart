import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'list_option_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ListOptionType {
  abilityScoreAdjustment("ASI", "Ability Score Adjustment"),
  equipment("Equipment", "Equipment"),
  feat("Feat", "Feat"),
  feature("Feature", "Feature"),
  proficiency("Proficiency", "Proficiency"),
  proficiencyArmor("Armor", "Armor Proficiency"),
  proficiencyLanguage("Language", "Language Proficiency"),
  proficiencySavingThrow("Saving Throw", "Saving Throw Proficiency"),
  proficiencySkill("Skill", "Skill Proficiency"),
  proficiencyTool("Tool", "Tool Proficiency"),
  proficiencyWeapon("Weapon", "Weapon Proficiency"),
  spell("Spell", "Spell");

  final String display;
  final String displayLong;

  const ListOptionType(this.display, this.displayLong);

  factory ListOptionType.fromJson(String json) {
    return MapperUtil.jsonToEnum(
          "ListOptionType",
          _$ListOptionTypeEnumMap,
          json,
        )
        as ListOptionType;
  }

  String toJson() => _$ListOptionTypeEnumMap[this]!;
}
