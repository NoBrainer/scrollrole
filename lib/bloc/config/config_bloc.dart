import 'dart:async';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/data/repository/config_repository.dart';
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

void triggerForceReset(BuildContext context) {
  context.read<ConfigBloc>().add(ForceReset());
}

void triggerImportFile(BuildContext context, String content) {
  context.read<ConfigBloc>().add(ImportFile(content));
}
