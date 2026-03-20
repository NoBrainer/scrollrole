import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'background.g.dart';

@DefaultJsonSerializable()
class Background extends Feature {
  final String iconId;

  static const defaultIconId = 'background-custom';

  const Background({
    super.choices,
    super.description,
    super.descriptionShort,
    super.equipment,
    super.features,
    required super.name,
    super.proficiencies,
    super.speed,
    super.statModifiers,
    super.unlockables,
    super.variables,
    this.iconId = Background.defaultIconId,
  });

  @override
  List<Object?> get props => [...super.props, iconId];

  factory Background.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Background', _$BackgroundFromJson, json)
        as Background;
  }

  @override
  Map<String, dynamic> toJson() => _$BackgroundToJson(this);
}
