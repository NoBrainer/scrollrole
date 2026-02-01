import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'condition.g.dart';

/// Every field must be true.
/// To construct more complicated conditions, use `and` and/or `or` fields.
@immutable
@JsonSerializable(explicitToJson: true)
class Condition extends Equatable {
  final List<int>? atLevels;
  final String? hasBackground;
  final String? hasClass;
  final String? hasFeat;
  final String? hasFeature;
  final String? hasProficiency;
  final String? hasProficiencyArmor;
  final String? hasProficiencyLanguage;
  final String? hasProficiencySavingThrow;
  final String? hasProficiencySkill;
  final String? hasProficiencyTool;
  final String? hasProficiencyWeapon;
  final String? hasSpecies;

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
    this.hasProficiency,
    this.hasProficiencyArmor,
    this.hasProficiencyLanguage,
    this.hasProficiencySavingThrow,
    this.hasProficiencySkill,
    this.hasProficiencyTool,
    this.hasProficiencyWeapon,
    this.hasSpecies,
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
    hasProficiency,
    hasProficiencyArmor,
    hasProficiencyLanguage,
    hasProficiencySavingThrow,
    hasProficiencySkill,
    hasProficiencyTool,
    hasProficiencyWeapon,
    hasSpecies,
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
