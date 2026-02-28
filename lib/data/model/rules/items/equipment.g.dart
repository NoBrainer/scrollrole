// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equipment _$EquipmentFromJson(Map<String, dynamic> json) => Equipment(
  name: const StringTrimConverter().fromJson(json['name'] as String),
  quantity: (json['quantity'] as num?)?.toDouble() ?? 1,
  units: _$JsonConverterFromJson<String, String>(
    json['units'],
    const StringTrimConverter().fromJson,
  ),
);

Map<String, dynamic> _$EquipmentToJson(Equipment instance) => <String, dynamic>{
  'name': const StringTrimConverter().toJson(instance.name),
  'quantity': instance.quantity,
  'units': _$JsonConverterToJson<String, String>(
    instance.units,
    const StringTrimConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
