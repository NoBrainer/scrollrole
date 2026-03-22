import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'list_option.g.dart';

@DefaultJsonSerializable()
class ListOption extends Equatable implements Comparable<ListOption> {
  final Feature? feature;
  final String name;
  final int? quantity;
  final ListOptionType type;

  const ListOption({
    this.feature,
    required this.name,
    this.quantity,
    required this.type,
  });

  @override
  List<Object?> get props => [feature, name, quantity, type];

  factory ListOption.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject('ListOption', _$ListOptionFromJson, json)
        as ListOption;
  }

  Map<String, dynamic> toJson() => _$ListOptionToJson(this);

  String toJsonString() => jsonEncode(toJson());

  @override
  int compareTo(other) =>
      (1000 * type.compareTo(other.type)) + name.compareTo(other.name);
}
