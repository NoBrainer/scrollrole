import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'list_option_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum ListOptionType {
  @JsonValue("abilityScoreAdjustment")
  abilityScoreAdjustment("Ability Score Adjustment"),

  @JsonValue("equipment")
  equipment("Equipment"),

  @JsonValue("feat")
  feat("Feat"),

  @JsonValue("feature")
  feature("Feature"),

  @JsonValue("proficiency")
  proficiency("Proficiency"),

  @JsonValue("language proficiency")
  proficiencyLanguage("Language Proficiency"),

  @JsonValue("skill proficiency")
  proficiencySkill("Skill Proficiency"),

  @JsonValue("tool proficiency")
  proficiencyTool("Tool Proficiency"),

  @JsonValue("spell")
  spell("Spell");

  final String display;

  const ListOptionType(this.display);

  factory ListOptionType.fromJson(String str) {
    try {
      return $enumDecode(_$ListOptionTypeEnumMap, str);
    } catch (e) {
      LogUtil.print(
        "Failed to parse ListOptionType!\n"
        "- Error: '$e'\n- Input: '$str'",
      );
      rethrow;
    }
  }

  String toJson() => _$ListOptionTypeEnumMap[this]!;
}
