// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOption _$ListOptionFromJson(Map<String, dynamic> json) => ListOption(
  name: json['name'] as String,
  quantity: (json['quantity'] as num?)?.toInt(),
  type: ListOptionType.fromJson(json['type'] as String),
);

Map<String, dynamic> _$ListOptionToJson(ListOption instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'type': instance.type.toJson(),
    };
