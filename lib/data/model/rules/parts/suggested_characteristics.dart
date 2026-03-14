import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:scrollrole/util/config/default_json_serializable.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'suggested_characteristics.g.dart';

@DefaultJsonSerializable()
class SuggestedCharacteristics extends Equatable {
  final List<String> bonds;
  final List<String> description;
  final List<String> flaws;
  final List<String> ideals;
  final List<String> personalityTraits;

  const SuggestedCharacteristics({
    this.bonds = const [],
    this.description = const [],
    this.flaws = const [],
    this.ideals = const [],
    this.personalityTraits = const [],
  });

  const SuggestedCharacteristics.blank() : this();

  @override
  List<Object?> get props => [
    bonds,
    description,
    flaws,
    ideals,
    personalityTraits,
  ];

  factory SuggestedCharacteristics.fromJson(Map<String, dynamic> json) {
    return MapperUtil.jsonToObject(
          'SuggestedCharacteristics',
          _$SuggestedCharacteristicsFromJson,
          json,
        )
        as SuggestedCharacteristics;
  }

  Map<String, dynamic> toJson() => _$SuggestedCharacteristicsToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
