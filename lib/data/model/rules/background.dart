import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/suggestedCharacteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';

part 'background.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Background extends Equatable {
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final String name;
  final List<Proficiency> proficiencies;
  final SuggestedCharacteristics suggestedCharacteristics;

  // TODO: Verify that this works instead of having all-args constructor where order matters
  const Background({
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    required this.name,
    this.proficiencies = const [],
    this.suggestedCharacteristics = SuggestedCharacteristics.blank,
  });

  @override
  List<Object?> get props => [
    choices,
    description,
    equipment,
    features,
    name,
    proficiencies,
    suggestedCharacteristics,
  ];

  factory Background.fromJson(Map<String, dynamic> json) {
    try {
      return _$BackgroundFromJson(json);
    } catch (e) {
      // debug("Failed to parse Background!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$BackgroundToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
