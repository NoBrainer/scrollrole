import 'package:scrollrole/data/model/enum/dice_type.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'class.g.dart';

@DefaultJsonSerializable()
class Class extends Feature {
  final int baseHitPoints;
  final DiceType hitPointDie;
  final String iconId;
  final int proficiencyBonus;
  final SpellCasting? spellCasting;

  static const defaultBaseHitPoints = 10;
  static const defaultHitPointDie = DiceType.d8;
  static const defaultIconId = 'class-custom';
  static const defaultProficiencyBonus = 2;

  const Class({
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
    this.baseHitPoints = Class.defaultBaseHitPoints,
    this.hitPointDie = Class.defaultHitPointDie,
    this.iconId = Class.defaultIconId,
    this.proficiencyBonus = Class.defaultProficiencyBonus,
    this.spellCasting,
  });

  @override
  List<Object?> get props => [
    ...super.props,
    baseHitPoints,
    hitPointDie,
    iconId,
    proficiencyBonus,
    spellCasting,
  ];

  factory Class.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Class', _$ClassFromJson, json) as Class;
  }

  @override
  Map<String, dynamic> toJson() => _$ClassToJson(this);
}
