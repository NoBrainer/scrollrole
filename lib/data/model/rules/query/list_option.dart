import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'list_option.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class ListOption extends Equatable {
  final String name;
  final ListOptionType type;

  const ListOption({required this.name, required this.type});

  @override
  List<Object?> get props => [name, type];

  factory ListOption.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("ListOption", _$ListOptionFromJson, json)
        as ListOption;
  }

  Map<String, dynamic> toJson() => _$ListOptionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
