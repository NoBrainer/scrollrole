import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/rules/items/armor.dart';
import 'package:scrollrole/data/model/rules/items/equipment_pack.dart';
import 'package:scrollrole/data/model/rules/items/gear.dart';
import 'package:scrollrole/data/model/rules/items/language.dart';
import 'package:scrollrole/data/model/rules/items/tool.dart';
import 'package:scrollrole/data/model/rules/items/weapon.dart';
import 'package:scrollrole/data/model/rules/parts/feat.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/spell.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'config_lists.g.dart';

@DefaultJsonSerializable()
class ConfigLists extends Equatable {
  final List<Armor> armor;
  final List<Feature> backgroundFeatures;
  final List<EquipmentPack> equipmentPacks;
  final List<Feat> feats;
  final List<Feature> features;
  final List<Gear> gear;
  final List<Language> languages;
  final List<Proficiency> proficiencies;
  final List<Spell> spells;
  final List<Tool> tools;
  final List<Weapon> weapons;

  const ConfigLists({
    this.armor = const [],
    this.backgroundFeatures = const [],
    this.equipmentPacks = const [],
    this.feats = const [],
    this.features = const [],
    this.gear = const [],
    this.languages = const [],
    this.proficiencies = const [],
    this.spells = const [],
    this.tools = const [],
    this.weapons = const [],
  });

  const ConfigLists.blank() : this();

  @override
  List<Object?> get props => [
    armor,
    backgroundFeatures,
    equipmentPacks,
    feats,
    features,
    gear,
    languages,
    proficiencies,
    spells,
    tools,
    weapons,
  ];

  factory ConfigLists.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('ConfigLists', _$ConfigListsFromJson, json)
        as ConfigLists;
  }

  Map<String, dynamic> toJson() => _$ConfigListsToJson(this);

  String toJsonString() => jsonEncode(toJson());
}
