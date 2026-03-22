import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
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
import 'package:scrollrole/data/model/rules/query/list_option.dart';
import 'package:scrollrole/data/model/rules/query/list_query.dart';

class QueryUtil {
  static List<ListOption> queryOptions(BuildContext context, ListQuery query) {
    // Used to determine type for proficiencies
    List<ListOptionType> types = query.types.toSet().toList();

    // Used for spells
    List<String> classNames = query.classes.toSet().toList();
    List<int> levels = query.levels.toSet().toList();

    // Used for features, proficiencies, tools, weapons
    List<String> requiredTags = query.requiredTags.toSet().toList();
    List<String> tags = query.tags.toSet().toList();

    String listName = query.list;
    switch (listName) {
      case 'armor':
        return getAllArmor(context)
            .map(
              (Armor a) =>
                  ListOption(name: a.name, type: ListOptionType.equipmentArmor),
            )
            .toList();
      case 'backgroundFeatures':
        return getAllBackgroundFeatures(context)
            .map(
              (Feature f) => ListOption(
                name: f.name,
                type: ListOptionType.feature,
                feature: f,
              ),
            )
            .toList();
      case 'equipmentPacks':
        return getAllEquipmentPacks(context)
            .map(
              (EquipmentPack p) =>
                  // TODO: May need a different type to distinguish between gear
                  ListOption(name: p.name, type: ListOptionType.equipment),
            )
            .toList();
      case 'feats':
        return getAllFeats(context)
            .map(
              (Feat f) => ListOption(name: f.name, type: ListOptionType.feat),
            )
            .toList();
      case 'features':
        return getAllFeatures(context)
            .where((Feature f) {
              // TODO: filter by requiredTags, tags
              return true;
            })
            .map(
              (Feature f) => ListOption(
                name: f.name,
                type: ListOptionType.feature,
                feature: f,
              ),
            )
            .toList();
      case 'gear':
        return getAllGear(context)
            .map(
              (Gear g) =>
                  ListOption(name: g.name, type: ListOptionType.equipment),
            )
            .toList();
      case 'languages':
        return getAllLanguages(context)
            .map(
              (Language l) => ListOption(
                name: l.name,
                // TODO: May need a different type to distinguish between proficiency
                type: ListOptionType.proficiencyLanguage,
              ),
            )
            .toList();
      case 'proficiencies':
        return getAllProficiencies(context)
            // TODO: filter by requiredTags, tags
            .where((Proficiency p) => p.type.matchesOptionTypes(types))
            .map(
              (Proficiency p) =>
                  ListOption(name: p.name, type: p.type.toListOptionType()),
            )
            .toList();
      case 'spells':
        return getAllSpells(context)
            .where((Spell s) {
              // TODO: filter by classNames, levels
              return true;
            })
            .map(
              (Spell s) => ListOption(name: s.name, type: ListOptionType.spell),
            )
            .toList();
      case 'tools':
        return getAllTools(context)
            .where((Tool t) {
              // TODO: filter by requiredTags, tags
              return true;
            })
            .map(
              (Tool t) =>
                  ListOption(name: t.name, type: ListOptionType.equipmentTool),
            )
            .toList();
      case 'weapons':
        return getAllWeapons(context)
            .where((Weapon w) {
              // TODO: filter by requiredTags, tags
              return true;
            })
            .map(
              (Weapon w) => ListOption(
                name: w.name,
                type: ListOptionType.equipmentWeapon,
              ),
            )
            .toList();
      default:
        return [];
    }
  }
}
