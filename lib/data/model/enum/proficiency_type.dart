import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'proficiency_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ProficiencyType {
  armor("Armor", "Armor Proficiency"),
  language("Language", "Language Proficiency"),
  savingThrow("Saving Throw", "Saving Throw Proficiency"),
  skill("Skill", "Skill Proficiency"),
  tool("Tool", "Tool Proficiency");

  final String display;
  final String displayLong;

  const ProficiencyType(this.display, this.displayLong);

  factory ProficiencyType.fromJson(String json) {
    try {
      json = json.toUpperCase();
      return $enumDecode(_$ProficiencyTypeEnumMap, json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse ProficiencyType!\n"
        "- Error: '$e'\n- Input: '$json'",
      );
      rethrow;
    }
  }

  String toJson() => _$ProficiencyTypeEnumMap[this]!;
}
