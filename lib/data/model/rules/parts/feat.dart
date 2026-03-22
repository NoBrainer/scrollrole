import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/rules/interface/taggable.dart';
import 'package:scrollrole/data/model/rules/query/condition.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'feat.g.dart';

@DefaultJsonSerializable()
class Feat extends Equatable implements Comparable<Feat>, Taggable {
  final List<String> description;
  final String descriptionShort;
  final String name;
  final List<Condition> prerequisites;
  @override
  final List<String> tags;

  const Feat({
    this.description = const [],
    this.descriptionShort = '',
    required this.name,
    this.prerequisites = const [],
    this.tags = const [],
  });

  @override
  List<Object?> get props => [
    description,
    descriptionShort,
    name,
    prerequisites,
    tags,
  ];

  factory Feat.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Feat', _$FeatFromJson, json) as Feat;
  }

  Map<String, dynamic> toJson() => _$FeatToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) => name.compareTo(other.name);
}
