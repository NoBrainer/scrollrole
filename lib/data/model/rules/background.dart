import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'background.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Background extends Feature {
  final String iconId;

  static const defaultIconId = 'background-custom';

  const Background({
    super.choices,
    super.description,
    super.equipment,
    super.features,
    this.iconId = Background.defaultIconId,
    required super.name,
    super.proficiencies,
    super.shortDescription,
    super.speed,
    super.statModifiers,
    super.suggestedCharacteristics,
    super.unlockables,
    super.variables,
  });

  @override
  List<Object?> get props => [...super.props, iconId];

  factory Background.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Background", _$BackgroundFromJson, json)
        as Background;
  }

  @override
  Map<String, dynamic> toJson() => _$BackgroundToJson(this);
}
