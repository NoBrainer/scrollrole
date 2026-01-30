// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_lists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigLists _$ConfigListsFromJson(Map<String, dynamic> json) => ConfigLists(
  armor:
      (json['armor'] as List<dynamic>?)
          ?.map((e) => Armor.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  backgroundFeatures:
      (json['backgroundFeatures'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  equipmentPacks:
      (json['equipmentPacks'] as List<dynamic>?)
          ?.map((e) => EquipmentPack.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  feats:
      (json['feats'] as List<dynamic>?)
          ?.map((e) => Feat.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  features:
      (json['features'] as List<dynamic>?)
          ?.map((e) => Feature.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  gear:
      (json['gear'] as List<dynamic>?)
          ?.map((e) => Gear.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  languages:
      (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  proficiencies:
      (json['proficiencies'] as List<dynamic>?)
          ?.map((e) => Proficiency.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  spells:
      (json['spells'] as List<dynamic>?)
          ?.map((e) => Spell.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tools:
      (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  weapons:
      (json['weapons'] as List<dynamic>?)
          ?.map((e) => Weapon.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ConfigListsToJson(ConfigLists instance) =>
    <String, dynamic>{
      'armor': instance.armor.map((e) => e.toJson()).toList(),
      'backgroundFeatures': instance.backgroundFeatures
          .map((e) => e.toJson())
          .toList(),
      'equipmentPacks': instance.equipmentPacks.map((e) => e.toJson()).toList(),
      'feats': instance.feats.map((e) => e.toJson()).toList(),
      'features': instance.features.map((e) => e.toJson()).toList(),
      'gear': instance.gear.map((e) => e.toJson()).toList(),
      'languages': instance.languages.map((e) => e.toJson()).toList(),
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'spells': instance.spells.map((e) => e.toJson()).toList(),
      'tools': instance.tools.map((e) => e.toJson()).toList(),
      'weapons': instance.weapons.map((e) => e.toJson()).toList(),
    };
