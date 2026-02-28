// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_characteristics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedCharacteristics _$SuggestedCharacteristicsFromJson(
  Map<String, dynamic> json,
) => SuggestedCharacteristics(
  bonds:
      (json['bonds'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  description:
      (json['description'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  flaws:
      (json['flaws'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  ideals:
      (json['ideals'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
  personalityTraits:
      (json['personalityTraits'] as List<dynamic>?)
          ?.map((e) => const StringTrimConverter().fromJson(e as String))
          .toList() ??
      const [],
);

Map<String, dynamic> _$SuggestedCharacteristicsToJson(
  SuggestedCharacteristics instance,
) => <String, dynamic>{
  'bonds': instance.bonds.map(const StringTrimConverter().toJson).toList(),
  'description': instance.description
      .map(const StringTrimConverter().toJson)
      .toList(),
  'flaws': instance.flaws.map(const StringTrimConverter().toJson).toList(),
  'ideals': instance.ideals.map(const StringTrimConverter().toJson).toList(),
  'personalityTraits': instance.personalityTraits
      .map(const StringTrimConverter().toJson)
      .toList(),
};
