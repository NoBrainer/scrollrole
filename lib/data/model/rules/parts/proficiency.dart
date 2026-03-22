import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/enum/proficiency_type.dart';
import 'package:scrollrole/data/model/rules/interface/taggable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'proficiency.g.dart';

@DefaultJsonSerializable()
class Proficiency extends Equatable
    implements Comparable<Proficiency>, Taggable {
  final String name;
  @override
  final List<String> tags;
  final ProficiencyType type;

  const Proficiency({
    required this.name,
    this.tags = const [],
    required this.type,
  });

  @override
  List<Object?> get props => [name, tags, type];

  factory Proficiency.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Proficiency', _$ProficiencyFromJson, json)
        as Proficiency;
  }

  Map<String, dynamic> toJson() => _$ProficiencyToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
