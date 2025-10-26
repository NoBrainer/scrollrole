import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'suggestedCharacteristics.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class SuggestedCharacteristics extends Equatable {
  final List<String> bonds;
  final List<String> description;
  final List<String> flaws;
  final List<String> ideals;
  final List<String> personalityTraits;

  static const blank = SuggestedCharacteristics();

  const SuggestedCharacteristics({
    this.bonds = const [],
    this.description = const [],
    this.flaws = const [],
    this.ideals = const [],
    this.personalityTraits = const [],
  });

  @override
  List<Object?> get props => [
    bonds,
    description,
    flaws,
    ideals,
    personalityTraits,
  ];

  factory SuggestedCharacteristics.fromJson(Map<String, dynamic> json) {
    try {
      return _$SuggestedCharacteristicsFromJson(json);
    } catch (e) {
      // debug("Failed to parse SuggestedCharacteristics!\n- Error: '$e'\n- Input: $json");
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$SuggestedCharacteristicsToJson(this);

  String toJsonString() {
    return jsonEncode(toJson());
  }
}
