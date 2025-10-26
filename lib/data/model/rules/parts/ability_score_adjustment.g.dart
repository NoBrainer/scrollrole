// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_score_adjustment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityScoreAdjustment _$AbilityScoreAdjustmentFromJson(
  Map<String, dynamic> json,
) => AbilityScoreAdjustment(
  ability: Ability.fromJson(json['ability'] as String),
  modifier: (json['modifier'] as num).toInt(),
);

Map<String, dynamic> _$AbilityScoreAdjustmentToJson(
  AbilityScoreAdjustment instance,
) => <String, dynamic>{
  'ability': instance.ability.toJson(),
  'modifier': instance.modifier,
};
