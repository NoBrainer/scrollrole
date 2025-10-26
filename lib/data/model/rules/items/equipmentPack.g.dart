// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipmentPack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EquipmentPack _$EquipmentPackFromJson(Map<String, dynamic> json) =>
    EquipmentPack(
      name: json['name'] as String,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => Equipment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$EquipmentPackToJson(EquipmentPack instance) =>
    <String, dynamic>{
      'name': instance.name,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
