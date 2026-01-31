import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'condition.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Condition extends Equatable {
  final String? feature;
  final int? level;
  final List<int>? levels;
  final Proficiency? proficiency;

  const Condition({this.feature, this.level, this.levels, this.proficiency});

  @override
  List<Object?> get props => [feature, level, levels, proficiency];

  factory Condition.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Condition', _$ConditionFromJson, json)
        as Condition;
  }

  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
