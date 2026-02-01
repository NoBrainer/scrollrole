import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/data/model/rules/class.dart';
import 'package:scrollrole/data/model/rules/config_lists.dart';
import 'package:scrollrole/data/model/rules/species.dart';
import 'package:scrollrole/util/log_util.dart';
import 'package:scrollrole/util/mapper_util.dart';
import 'package:scrollrole/util/uuid_util.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_writer/yaml_writer.dart';

part 'rules_config.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class RulesConfig extends Equatable {
  final List<Background> backgrounds;
  final List<Class> classes;
  final String description;
  final ConfigLists lists;
  final String name;
  final List<Species> species;
  final String url;
  final String uuid;

  RulesConfig({
    this.backgrounds = const [],
    this.classes = const [],
    this.description = '',
    this.lists = const ConfigLists.blank(),
    required this.name,
    this.species = const [],
    this.url = '',
    uuid,
  }) : uuid = uuid ?? UuidUtil.generate();

  RulesConfig.blank() : this(name: 'Untitled Rules Config');

  @override
  List<Object?> get props => [
    backgrounds,
    classes,
    description,
    lists,
    name,
    species,
    url,
    uuid,
  ];

  factory RulesConfig.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('RulesConfig', _$RulesConfigFromJson, json)
        as RulesConfig;
  }

  Map<String, dynamic> toJson() => _$RulesConfigToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }

  String toYaml() {
    var writer = YamlWriter();
    return writer.write(toJson());
  }

  static RulesConfig? fromYaml(String yaml) {
    try {
      YamlMap yamlMap = loadYaml(yaml);
      String jsonString = json.encode(yamlMap);
      var jsonMap = json.decode(jsonString);
      return RulesConfig.fromJson(jsonMap);
    } catch (e) {
      LogUtil.print('Error parsing yaml: $e');
      return null;
    }
  }
}
