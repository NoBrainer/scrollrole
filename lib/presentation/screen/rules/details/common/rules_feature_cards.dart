import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_choices_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_description_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_equipment_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_variables_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_name_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_proficiencies_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_speed_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_stat_modifiers_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_suggested_characteristics_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_unlockables_card.dart';

class RulesFeatureCards extends StatelessWidget {
  final Feature feature;
  final String? name;

  const RulesFeatureCards({super.key, required this.feature, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (name != null) RulesNameCard(name: name!),
        RulesDescriptionCard(
          abbreviation: feature.descriptionShort,
          paragraphs: feature.description,
        ),
        RulesEquipmentCard(equipment: feature.equipment),
        RulesProficienciesCard(proficiencies: feature.proficiencies),
        RulesSpeedCard(speed: feature.speed),
        RulesStatModifiersCard(statModifiers: feature.statModifiers),
        RulesFeatureVariablesCard(variables: feature.variables),
        RulesChoicesCard(choices: feature.choices),
        RulesUnlockablesCard(unlockables: feature.unlockables),
        RulesSuggestedCharacteristicsCard(
          suggestedCharacteristics: feature.suggestedCharacteristics,
        ),
        ...feature.features.map((f) {
          return RulesFeatureCards(feature: f);
        }),
      ],
    );
  }
}
