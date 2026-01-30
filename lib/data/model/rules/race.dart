import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/common_rules_base.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'race.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Race extends CommonRulesBase {
  static const defaultIconId = 'race-custom';

  const Race({
    super.choices,
    super.description,
    super.equipment,
    super.features,
    super.iconId = Race.defaultIconId,
    required super.name,
    super.proficiencies,
    super.speed,
    super.statModifiers,
    super.suggestedCharacteristics,
    super.unlockables,
  });

  @override
  List<Object?> get props => [...super.props];

  factory Race.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Race", _$RaceFromJson, json) as Race;
  }

  @override
  Map<String, dynamic> toJson() => _$RaceToJson(this);
}
