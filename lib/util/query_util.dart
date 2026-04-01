import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/data/model/rules/interface/taggable.dart';
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
  /// Determine options from a list of [ListOption]s and a [ListQuery].
  static List<ListOption> buildListOptions({
    required BuildContext context,
    required ListQuery query,
    List<ListOption> initialOptions = const [],
  }) {
    List<ListOption> options = [...initialOptions];

    options.addAll(QueryUtil._queryListOptions(context, query));

    // TODO: Figure out if we want to always sort
    options.sort();

    return options.toSet().toList();
  }

  static List<ListOption> _queryListOptions(
    BuildContext context,
    ListQuery query,
  ) {
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
            .where((Feat f) => hasAnyTags(f, tags))
            .where((Feat f) => hasAllTags(f, requiredTags))
            .map(
              (Feat f) => ListOption(name: f.name, type: ListOptionType.feat),
            )
            .toList();
      case 'features':
        return getAllFeatures(context)
            .where((Feature f) => hasAnyTags(f, tags))
            .where((Feature f) => hasAllTags(f, requiredTags))
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
                // TODO: Or consolidate languages into language proficiency
                type: ListOptionType.proficiencyLanguage,
              ),
            )
            .toList();
      case 'proficiencies':
        return getAllProficiencies(context)
            .where((Proficiency p) => hasAnyTags(p, tags))
            .where((Proficiency p) => hasAllTags(p, requiredTags))
            .where((Proficiency p) => p.type.matchesOptionTypes(types))
            .map(
              (Proficiency p) =>
                  ListOption(name: p.name, type: p.type.toListOptionType()),
            )
            .toList();
      case 'spells':
        return getAllSpells(context)
            .where((Spell s) => hasAnyTags(s, tags))
            .where((Spell s) => hasAllTags(s, requiredTags))
            .where((Spell s) {
              return levels.isEmpty ? true : levels.contains(s.level);
            })
            .where((Spell s) {
              if (classNames.isNotEmpty && s.classes.isEmpty) {
                return false; // nothing to match filter
              }
              return hasAny(s.classes, classNames);
            })
            .map(
              (Spell s) => ListOption(name: s.name, type: ListOptionType.spell),
            )
            .toList();
      case 'tools':
        return getAllTools(context)
            .where((Tool t) => hasAnyTags(t, tags))
            .where((Tool t) => hasAllTags(t, requiredTags))
            .map(
              (Tool t) =>
                  ListOption(name: t.name, type: ListOptionType.equipmentTool),
            )
            .toList();
      case 'weapons':
        return getAllWeapons(context)
            .where((Weapon w) => hasAnyTags(w, tags))
            .where((Weapon w) => hasAllTags(w, requiredTags))
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

  /// True if [t] has all [required] tags.
  static bool hasAllTags(Taggable t, List<String> required) {
    return hasAll(t.tags, required);
  }

  /// True if [list] is a superset of [required].
  static bool hasAll(List list, List required) {
    if (required.isEmpty) {
      return true;
    }

    List missing = required.where((s) => !list.contains(s)).toList();
    return missing.isEmpty;
  }

  /// True if [t] has any tags matching [any].
  static bool hasAnyTags(Taggable t, List<String> any) {
    return hasAny(t.tags, any);
  }

  /// True if [list] contains any from [any].
  static bool hasAny(List list, List any) {
    if (any.isEmpty) {
      return true;
    }

    List matching = list.where((s) => any.contains(s)).toList();
    return matching.isNotEmpty;
  }
}
