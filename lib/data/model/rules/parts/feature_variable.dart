import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/log_util.dart';

part 'feature_variable.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class FeatureVariable extends Equatable {
  final String displayName;
  final String key;
  final String value;

  const FeatureVariable({
    required this.displayName,
    required this.key,
    required this.value,
  });

  @override
  List<Object?> get props => [displayName, key, value];

  factory FeatureVariable.fromJson(Map<String, dynamic> json) {
    try {
      return _$FeatureVariableFromJson(json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse FeatureVariable!\n- Error: '$e'\n- Input: $json",
      );
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$FeatureVariableToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
