import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/util/log_util.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_writer/yaml_writer.dart';

part 'rules_config.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class RulesConfig extends Equatable {
  final List<Background> backgrounds;

  // TODO: Verify that this works instead of having all-args constructor where order matters
  const RulesConfig({this.backgrounds = const []});

  const RulesConfig.blank() : this();

  @override
  List<Object?> get props => [backgrounds];

  factory RulesConfig.fromJson(Map<String, dynamic> json) {
    try {
      return _$RulesConfigFromJson(json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse RulesConfig!\n- Error: '$e'\n- Input: $json",
      );
      rethrow;
    }
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
      LogUtil.print("Error parsing yaml: $e");
      return null;
    }
  }
}
