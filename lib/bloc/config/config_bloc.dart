import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/util/log_util.dart';

part 'config_bloc.g.dart';
part 'config_event.dart';
part 'config_state.dart';

class ConfigBloc extends HydratedBloc<ConfigEvent, ConfigState> {
  static const defaultConfigFile = "assets/config/default.yaml";

  ConfigBloc() : super(ConfigState.initial()) {
    LogUtil.print("Constructor for ConfigBloc");
    on<LoadDefaultConfigRequested>((event, emit) async {
      LogUtil.print("on LoadDefaultConfigRequested: $state");
      String yamlString = await rootBundle.loadString(defaultConfigFile);
      //TODO: save/cache this ConfigState
      // LogUtil.print("YAML:\n---\n$yamlString\n---\n");
      RulesConfig? rulesConfig = RulesConfig.fromYaml(yamlString);
      if (rulesConfig == null) {
        LogUtil.print("YAML was empty from default config");
        emit(state.copyWith(status: () => ConfigStatus.loadedFailure));
      } else {
        LogUtil.print("RulesConfig loaded from: $defaultConfigFile");
        emit(
          state.copyWith(
            rulesConfig: () => rulesConfig,
            status: () => ConfigStatus.loadedSuccess,
          ),
        );
      }
    });
    on<ForceSave>((event, emit) {
      LogUtil.print("on ForceSave: $state");
      HydratedBloc.storage.write(storageToken, toJson(state));
    });
    on<ForceReset>((event, emit) {
      final newState = ConfigState.initial().copyWith();
      LogUtil.print("on ForceReset:\n```\n$newState```");
      HydratedBloc.storage.write(storageToken, toJson(newState));
      emit(newState);
    });
    on<ImportFile>((event, emit) {
      LogUtil.print("on ImportFile:\n```\n${event.content}```");
      if (event.content.isEmpty) {
        LogUtil.print("Ignoring empty file import");
        return;
      }
      RulesConfig? importedRules = RulesConfig.fromYaml(event.content);
      if (importedRules == null) {
        LogUtil.print("Empty imported rules. Ignoring.");
      } else {
        LogUtil.print("RulesConfig: $importedRules");
        emit(
          state.copyWith(
            rulesConfig: () => importedRules,
            status: () => ConfigStatus.loadedSuccess,
          ),
        );
      }
    });
  }

  @override
  ConfigState? fromJson(Map<String, dynamic> json) {
    return ConfigState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ConfigState state) {
    return state.toJson();
  }
}
