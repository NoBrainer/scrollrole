import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/query/list_option.dart';
import 'package:scrollrole/data/model/rules/query/list_query.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'choice.g.dart';

//TODO: Figure out how to incorporate StatModifier as options
/// Must provide a query, hard-coded options, or both.
@immutable
@JsonSerializable(explicitToJson: true)
class Choice extends Equatable {
  final bool allowDuplicate;
  final List<String> description;
  final String name;
  final List<ListOption> options;
  final int pick;
  final ListQuery? query;

  const Choice({
    this.allowDuplicate = false,
    this.description = const [],
    required this.name,
    this.options = const [],
    this.pick = 1,
    this.query,
  });

  @override
  List<Object?> get props => [
    allowDuplicate,
    description,
    name,
    options,
    pick,
    query,
  ];

  factory Choice.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'Choice',
          _$ChoiceFromJson,
          json,
          validate: (Choice parsedChoice) {
            // TODO: Handle these exceptions or change parsing strategies
            // Note: This works well as a developer but not a user.
            if (parsedChoice.options.isEmpty && parsedChoice.query == null) {
              throw Exception("Choice must include 'option' and/or 'query'");
            }
          },
        )
        as Choice;
  }

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
