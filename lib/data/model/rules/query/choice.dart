import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/query/list_option.dart';
import 'package:scrollrole/data/model/rules/query/list_query.dart';
import 'package:scrollrole/util/log_util.dart';

part 'choice.g.dart';

/// Must provide a query or hard-coded options, not both.
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
    try {
      Choice parsedChoice = _$ChoiceFromJson(json);
      // TODO: Handle these exceptions or change parsing strategies
      if (parsedChoice.options.isEmpty && parsedChoice.query == null) {
        throw Exception("Choice must include 'option' or 'query'");
      } else if (parsedChoice.options.isNotEmpty &&
          parsedChoice.query != null) {
        throw Exception("Choice must not include both 'option' and 'query'");
      }
      return parsedChoice;
    } catch (e) {
      LogUtil.print("Failed to parse Choice!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
