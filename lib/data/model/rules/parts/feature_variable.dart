import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'feature_variable.g.dart';

@immutable
@JsonSerializable(explicitToJson: true, converters: MapperUtil.commonConverters)
class FeatureVariable extends Equatable {
  final String displayName;
  final String key;
  final dynamic value;

  const FeatureVariable({
    required this.displayName,
    required this.key,
    required this.value,
  });

  @override
  List<Object?> get props => [displayName, key, value];

  factory FeatureVariable.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'FeatureVariable',
          _$FeatureVariableFromJson,
          json,
        )
        as FeatureVariable;
  }

  Map<String, dynamic> toJson() => _$FeatureVariableToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
