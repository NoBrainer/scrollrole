import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

part 'choice_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum ChoiceType {
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
  @JsonValue("spell")
  spell("Spell");

  final String display;

  const ChoiceType(this.display);

  factory ChoiceType.fromJson(String str) {
    try {
      return $enumDecode(_$ChoiceTypeEnumMap, str);
    } catch (e) {
      LogUtil.print(
        "Failed to parse ChoiceType!\n"
        "- Error: '$e'\n- Input: '$str'",
      );
      rethrow;
    }
  }

  String toJson() => _$ChoiceTypeEnumMap[this]!;
}
