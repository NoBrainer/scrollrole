import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/query/condition.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'feat.g.dart';

@immutable
@JsonSerializable(explicitToJson: true, converters: MapperUtil.commonConverters)
class Feat extends Equatable {
  final List<String> description;
  final String descriptionShort;
  final String name;
  final List<Condition> prerequisites;

  const Feat({
    this.description = const [],
    this.descriptionShort = '',
    required this.name,
    this.prerequisites = const [],
  });

  @override
  List<Object?> get props => [
    description,
    descriptionShort,
    name,
    prerequisites,
  ];

  factory Feat.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('Feat', _$FeatFromJson, json) as Feat;
  }

  Map<String, dynamic> toJson() => _$FeatToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
