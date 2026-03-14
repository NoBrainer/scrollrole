import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/rules/query/proficiency_condition.dart';
import 'package:scrollrole/data/model/rules/query/stat_condition.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'condition.g.dart';

/// Every field must be true.
/// To construct more complicated conditions, use `and` and/or `or` fields.
@DefaultJsonSerializable()
class Condition extends Equatable {
  final List<int>? atLevels;
  final String? hasBackground;
  final String? hasClass;
  final String? hasFeat;
  final String? hasFeature;
  final List<ProficiencyCondition> hasProficiencies;
  final String? hasSpecies;
  final List<StatCondition> hasStats;

  /// Combine conditions (all are required)
  final List<Condition> and;

  /// Combine conditions (one is required)
  final List<Condition> or;

  const Condition({
    this.and = const [],
    this.atLevels,
    this.hasBackground,
    this.hasClass,
    this.hasFeat,
    this.hasFeature,
    this.hasProficiencies = const [],
    this.hasSpecies,
    this.hasStats = const [],
    this.or = const [],
  });

  @override
  List<Object?> get props => [
    and,
    atLevels,
    hasBackground,
    hasClass,
    hasFeat,
    hasFeature,
    hasProficiencies,
    hasSpecies,
    hasStats,
    or,
  ];

  factory Condition.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Condition', _$ConditionFromJson, json)
        as Condition;
  }

  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
