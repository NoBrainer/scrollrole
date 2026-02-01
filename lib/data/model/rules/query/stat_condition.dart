import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/stat_type.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'stat_condition.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class StatCondition extends Equatable {
  final int minimum;
  final String name;
  final StatType type;

  const StatCondition({
    required this.minimum,
    required this.name,
    required this.type,
  });

  @override
  List<Object?> get props => [minimum, name, type];

  factory StatCondition.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'StatCondition',
          _$StatConditionFromJson,
          json,
        )
        as StatCondition;
  }

  Map<String, dynamic> toJson() => _$StatConditionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
