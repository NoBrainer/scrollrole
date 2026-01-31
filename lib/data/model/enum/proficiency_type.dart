import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'proficiency_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum ProficiencyType {
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
}
