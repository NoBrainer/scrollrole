import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/choices_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/description_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/equipment_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/feature_variables_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/name_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/proficiencies_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/speed_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/stat_modifiers_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/suggested_characteristics_rules_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/unlockables_rules_card.dart';

class FeatureRulesCards extends StatelessWidget {
  final Feature feature;
  final String? name;

  const FeatureRulesCards({super.key, required this.feature, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (name != null) NameRulesCard(name: name!),
        DescriptionRulesCard(
          abbreviation: feature.descriptionShort,
          paragraphs: feature.description,
        ),
        EquipmentRulesCard(equipment: feature.equipment),
        ProficienciesRulesCard(proficiencies: feature.proficiencies),
        SpeedRulesCard(speed: feature.speed),
        StatModifiersRulesCard(statModifiers: feature.statModifiers),
        FeatureVariablesRulesCard(variables: feature.variables),
        ChoicesRulesCard(choices: feature.choices),
        UnlockablesRulesCard(unlockables: feature.unlockables),
        SuggestedCharacteristicsRulesCard(
          suggestedCharacteristics: feature.suggestedCharacteristics,
        ),
        ...feature.features.map((f) {
          return FeatureRulesCards(feature: f);
        }),
      ],
    );
  }
}
