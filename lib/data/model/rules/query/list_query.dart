import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'list_query.g.dart';

@DefaultJsonSerializable()
class ListQuery extends Equatable {
  final List<String> classes;
  final List<int> levels;
  final String list; //TODO: consider making this an enum?
  final List<String> requiredTags;
  final List<String> tags;
  final List<ListOptionType> types;

  const ListQuery({
    this.classes = const [],
    this.levels = const [],
    required this.list,
    this.requiredTags = const [],
    this.tags = const [],
    this.types = const [],
  });

  @override
  List<Object?> get props => [classes, levels, list, requiredTags, tags, types];

  factory ListQuery.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('ListQuery', _$ListQueryFromJson, json)
        as ListQuery;
  }

  Map<String, dynamic> toJson() => _$ListQueryToJson(this);

  String toJsonString() => jsonEncode(toJson());
}
