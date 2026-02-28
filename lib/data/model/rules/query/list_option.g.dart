// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOption _$ListOptionFromJson(Map<String, dynamic> json) => ListOption(
  feature: json['feature'] == null
      ? null
      : Feature.fromJson(json['feature'] as Map<String, dynamic>),
  name: const StringTrimConverter().fromJson(json['name'] as String),
  quantity: (json['quantity'] as num?)?.toInt(),
  type: ListOptionType.fromJson(
    const StringTrimConverter().fromJson(json['type'] as String),
  ),
);

Map<String, dynamic> _$ListOptionToJson(ListOption instance) =>
    <String, dynamic>{
      'feature': instance.feature?.toJson(),
      'name': const StringTrimConverter().toJson(instance.name),
      'quantity': instance.quantity,
      'type': instance.type.toJson(),
    };
