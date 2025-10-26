import 'package:json_annotation/json_annotation.dart';

part 'proficiency_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum ProficiencyType {
  @JsonValue("language")
  language("language"),
  @JsonValue("skill")
  skill("skill"),
  @JsonValue("tool")
  tool("tool");

  final String display;

  const ProficiencyType(this.display);

  factory ProficiencyType.fromJson(String str) {
    try {
      return $enumDecode(_$ProficiencyTypeEnumMap, str);
    } catch (e) {
      // debug("Failed to parse ProficiencyType!\n"
      //     "- Error: '$e'\n- Input: '$str'");
      rethrow;
    }
  }

  String toJson() => _$ProficiencyTypeEnumMap[this]!;
}
