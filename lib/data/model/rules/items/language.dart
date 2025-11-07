import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/util/log_util.dart';

part 'language.g.dart';

// TODO: Simplify language
@immutable
@JsonSerializable(explicitToJson: true)
class Language extends Equatable {
  final bool isExotic;
  final String name;
  final String script;
  final List<String> typicalUsers;

  const Language({
    this.isExotic = false,
    required this.name,
    this.script = "",
    this.typicalUsers = const [],
  });

  @override
  List<Object?> get props => [isExotic, name, script, typicalUsers];

  factory Language.fromJson(Map<String, dynamic> json) {
    try {
      return _$LanguageFromJson(json);
    } catch (e) {
      LogUtil.print("Failed to parse Language!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$LanguageToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
