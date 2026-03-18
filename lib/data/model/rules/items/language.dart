import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'language.g.dart';

// TODO: Simplify language
@DefaultJsonSerializable()
class Language extends Equatable implements Comparable<Language> {
  final bool isExotic;
  final String name;
  final String script;
  final List<String> typicalUsers;

  const Language({
    this.isExotic = false,
    required this.name,
    this.script = '',
    this.typicalUsers = const [],
  });

  @override
  List<Object?> get props => [isExotic, name, script, typicalUsers];

  factory Language.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Language', _$LanguageFromJson, json)
        as Language;
  }

  Map<String, dynamic> toJson() => _$LanguageToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
