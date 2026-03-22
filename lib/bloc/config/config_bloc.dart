import 'dart:async';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/data/model/rules/class.dart';
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
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/data/model/rules/species.dart';
import 'package:scrollrole/data/repository/config_repository.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/log_util.dart';

part 'config_bloc.g.dart';
part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends HydratedBloc<ConfigEvent, ConfigState> {
  final ConfigRepository _configRepository;
  late StreamSubscription<ConfigStatus> _configStatusSubscription;

  ConfigBloc(this._configRepository) : super(ConfigState.initial()) {
    on<ConfigStatusChanged>(_onConfigStatusChanged);
    on<LoadDefaultConfigRequested>((event, emit) async {
      _configRepository.loadDefaultConfig();
    });
    on<ForceSave>((event, emit) {
      LogUtil.print('on ForceSave: $state');
      HydratedBloc.storage.write(storageToken, toJson(state));
    });
    on<ForceReset>((event, emit) {
      LogUtil.print('on ForceReset');
      _configRepository.reset().then((_) {
        final newState = ConfigState.initial().copyWith();
        HydratedBloc.storage.write(storageToken, toJson(newState));
      });
    });
    on<ImportFile>((event, emit) {
      _configRepository.importConfig(event.content);
    });

    _configStatusSubscription = _configRepository.status.listen((status) {
      LogUtil.print('ConfigStatus change detected: $status');
      add(ConfigStatusChanged(status));
    });
  }

  Future<void> _onConfigStatusChanged(
    ConfigStatusChanged event,
    Emitter<ConfigState> emit,
  ) async {
    if ([ConfigStatus.loading, ConfigStatus.failure].contains(event.status)) {
      emit(state.copyWith(status: () => event.status));
    } else {
      emit(
        state.copyWith(
          rulesConfig: () => _configRepository.rulesConfig,
          status: () => event.status,
        ),
      );
    }
  }

  @override
  ConfigState? fromJson(Map<String, dynamic> json) {
    return ConfigState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ConfigState state) {
    return state.toJson();
  }

  @override
  Future<void> close() {
    _configStatusSubscription.cancel();
    return super.close();
  }
}

ConfigState getConfigState(BuildContext context) {
  return context.read<ConfigBloc>().state;
}

RulesConfig getRulesConfig(BuildContext context) {
  return getConfigState(context).rulesConfig;
}

List<Background> getBackgrounds(BuildContext context) {
  return getRulesConfig(context).backgrounds;
}

Background? getBackgroundByName(BuildContext context, String name) {
  for (Background b in getBackgrounds(context)) {
    if (b.name == name) {
      return b;
    }
  }
  return null;
}

List<Class> getClasses(BuildContext context) {
  return getRulesConfig(context).classes;
}

Class? getClassByName(BuildContext context, String name) {
  for (Class c in getClasses(context)) {
    if (c.name == name) {
      return c;
    }
  }
  return null;
}

List<Species> getSpecies(BuildContext context) {
  return getRulesConfig(context).species;
}

Species? getSpeciesByName(BuildContext context, String name) {
  for (Species s in getSpecies(context)) {
    if (s.name == name) {
      return s;
    }
  }
  return null;
}

List<Armor> getAllArmor(BuildContext context) {
  return getRulesConfig(context).lists.armor;
}

List<Feature> getAllBackgroundFeatures(BuildContext context) {
  return getRulesConfig(context).lists.backgroundFeatures;
}

List<EquipmentPack> getAllEquipmentPacks(BuildContext context) {
  return getRulesConfig(context).lists.equipmentPacks;
}

List<Feat> getAllFeats(BuildContext context) {
  return getRulesConfig(context).lists.feats;
}

List<Feature> getAllFeatures(BuildContext context) {
  return getRulesConfig(context).lists.features;
}

List<Gear> getAllGear(BuildContext context) {
  return getRulesConfig(context).lists.gear;
}

List<Language> getAllLanguages(BuildContext context) {
  return getRulesConfig(context).lists.languages;
}

List<Proficiency> getAllProficiencies(BuildContext context) {
  return getRulesConfig(context).lists.proficiencies;
}

List<Spell> getAllSpells(BuildContext context) {
  return getRulesConfig(context).lists.spells;
}

List<Tool> getAllTools(BuildContext context) {
  return getRulesConfig(context).lists.tools;
}

List<Weapon> getAllWeapons(BuildContext context) {
  return getRulesConfig(context).lists.weapons;
}

void triggerForceReset(BuildContext context) {
  context.read<ConfigBloc>().add(ForceReset());
}

void triggerImportFile(BuildContext context, String content) {
  context.read<ConfigBloc>().add(ImportFile(content));
}
