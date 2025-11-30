import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/util/log_util.dart';

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
    try {
      return _$ListOptionFromJson(json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse ListOption!\n- Error: '$e'\n- Input: $json",
      );
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ListOptionToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
