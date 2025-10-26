import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'choice.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Choice extends Equatable {
  final bool allowDuplicate;
  final List<String> description;
  final Map? from; //TODO: update type to object
  final String name;
  final Map? options; //TODO: update type to object
  final int? pick;
  final String type; //TODO: update type to enum
  final Map? use; //TODO: update type to object

  const Choice({
    this.allowDuplicate = false,
    this.description = const [],
    this.from,
    required this.name,
    this.options,
    this.pick,
    required this.type,
    this.use,
  });

  @override
  List<Object?> get props => [
    allowDuplicate,
    description,
    from,
    name,
    options,
    pick,
    type,
    use,
  ];

  factory Choice.fromJson(Map<String, dynamic> json) {
    try {
      return _$ChoiceFromJson(json);
    } catch (e) {
      // debug("Failed to parse Choice!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ChoiceToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
