import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'background.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class Background extends Equatable {
  final List<Choice> choices;
  final List<String> description;
  final List<Equipment> equipment;
  final List<Feature> features;
  final String iconId;
  final String name;
  final List<Proficiency> proficiencies;
  final SuggestedCharacteristics suggestedCharacteristics;

  static const defaultIconId = 'background-custom';

  const Background({
    this.choices = const [],
    this.description = const [],
    this.equipment = const [],
    this.features = const [],
    this.iconId = Background.defaultIconId,
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
    iconId,
    name,
    proficiencies,
    suggestedCharacteristics,
  ];

  factory Background.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject("Background", _$BackgroundFromJson, json)
        as Background;
  }

  Map<String, dynamic> toJson() => _$BackgroundToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
