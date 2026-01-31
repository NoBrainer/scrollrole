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

part 'background.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Background extends CommonRulesBase {
  static const defaultIconId = 'background-custom';

  const Background({
    super.choices,
    super.description,
    super.equipment,
    super.features,
    super.iconId = Background.defaultIconId,
    required super.name,
    super.proficiencies,
    super.speed,
    super.statModifiers,
    super.suggestedCharacteristics,
    super.unlockables,
  });

  factory Background.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Background", _$BackgroundFromJson, json)
        as Background;
  }

  @override
  Map<String, dynamic> toJson() => _$BackgroundToJson(this);
}
