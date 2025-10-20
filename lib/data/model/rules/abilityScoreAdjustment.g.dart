// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abilityScoreAdjustment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityScoreAdjustment _$AbilityScoreAdjustmentFromJson(
  Map<String, dynamic> json,
) => AbilityScoreAdjustment(
  ability: json['ability'] as String,
  modifier: (json['modifier'] as num).toInt(),
);

Map<String, dynamic> _$AbilityScoreAdjustmentToJson(
  AbilityScoreAdjustment instance,
) => <String, dynamic>{
  'ability': instance.ability,
  'modifier': instance.modifier,
};
