import 'dart:async';

import 'package:flutter/services.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/util/log_util.dart';

class ConfigRepository {
  final _statusController = StreamController<ConfigStatus>();
  bool _isParsing = false;

  RulesConfig rulesConfig = RulesConfig.blank();

  Stream<ConfigStatus> get status async* {
    yield ConfigStatus.initial;
    yield* _statusController.stream;
  }

  static const defaultConfigFile = 'assets/config/srd-2014.yaml';

  ConfigRepository();

  Future<void> loadDefaultConfig() async {
    if (_isParsing) {
      return;
    }
    _isParsing = true;

    try {
      _statusController.add(ConfigStatus.loading);

      LogUtil.print('ConfigRepository.loadDefaultConfig()');
      String yamlString = await rootBundle.loadString(defaultConfigFile);
      //TODO: save/cache this ConfigState
      // LogUtil.print("YAML:\n---\n$yamlString\n---\n");
      RulesConfig? parsedRules = RulesConfig.fromYaml(yamlString);
      if (parsedRules == null) {
        LogUtil.print('YAML was empty from default config');
        _statusController.add(ConfigStatus.failure);
      } else {
        LogUtil.print('RulesConfig loaded from: $defaultConfigFile');
        rulesConfig = parsedRules;
        _statusController.add(ConfigStatus.success);
      }
    } finally {
      _isParsing = false;
    }
  }

  Future<void> importConfig(String content) async {
    if (_isParsing) {
      return;
    }
    _isParsing = true;

    try {
      _statusController.add(ConfigStatus.loading);

      LogUtil.print('ConfigRepository.importConfig:\n```\n$content\n```');
      if (content.isEmpty) {
        LogUtil.print('Ignoring empty file import');
        _statusController.add(ConfigStatus.success);
        return;
      }

      RulesConfig? importedRules = RulesConfig.fromYaml(content);
      if (importedRules == null) {
        LogUtil.print('Empty imported rules. Ignoring.');
      } else {
        LogUtil.print('RulesConfig: $importedRules');
        rulesConfig = importedRules;
      }
      _statusController.add(ConfigStatus.success);
    } finally {
      _isParsing = false;
    }
  }

  Future<void> reset() async {
    _isParsing = false;
    rulesConfig = RulesConfig.blank();
    _statusController.add(ConfigStatus.initial);
  }

  void dispose() {
    _statusController.close();
  }
}
