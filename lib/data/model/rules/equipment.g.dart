// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equipment _$EquipmentFromJson(Map<String, dynamic> json) => Equipment(
  name: json['name'] as String,
  quantity: (json['quantity'] as num?)?.toDouble() ?? 1,
);

Map<String, dynamic> _$EquipmentToJson(Equipment instance) => <String, dynamic>{
  'name': instance.name,
  'quantity': instance.quantity,
};
