import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/util/log_util.dart';

part 'condition.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Condition extends Equatable {
  final String? feature;
  final int? level;
  final Proficiency? proficiency;

  const Condition({this.feature, this.level, this.proficiency});

  @override
  List<Object?> get props => [feature, level, proficiency];

  factory Condition.fromJson(Map<String, dynamic> json) {
    try {
      return _$ConditionFromJson(json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse Condition!\n- Error: '$e'\n- Input: $json",
      );
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ConditionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
