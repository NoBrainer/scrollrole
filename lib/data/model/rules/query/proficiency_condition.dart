import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/proficiency_type.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'proficiency_condition.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class ProficiencyCondition extends Equatable {
  final String name;
  final List<String> tags;
  final ProficiencyType type;

  const ProficiencyCondition({
    required this.name,
    this.tags = const [],
    required this.type,
  });

  @override
  List<Object?> get props => [name, tags, type];

  factory ProficiencyCondition.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'ProficiencyCondition',
          _$ProficiencyConditionFromJson,
          json,
        )
        as ProficiencyCondition;
  }

  Map<String, dynamic> toJson() => _$ProficiencyConditionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
