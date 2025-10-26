import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'listSelector.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class ListSelector extends Equatable {
  final List<String> classes;
  final List<int> levels;
  final String name;
  final List<String> requiredTags;
  final List<String> tags;
  final List<String> types;

  const ListSelector({
    this.classes = const [],
    this.levels = const [],
    required this.name,
    this.requiredTags = const [],
    this.tags = const [],
    this.types = const [],
  });

  @override
  List<Object?> get props => [classes, levels, name, requiredTags, tags, types];

  factory ListSelector.fromJson(Map<String, dynamic> json) {
    try {
      return _$ListSelectorFromJson(json);
    } catch (e) {
      // debug("Failed to parse ListSelector!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ListSelectorToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
