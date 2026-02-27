import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/feature.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_choices_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_description_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_equipment_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_title.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_variables_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_proficiencies_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_speed_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_stat_modifiers_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_suggested_characteristics_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_unlockables_card.dart';

class RulesFeatureCards extends StatelessWidget {
  final Feature feature;

  const RulesFeatureCards({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    bool hasFeatures = feature.features.isNotEmpty;

    return Column(
      children: [
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
        if (hasFeatures) _NestedFeaturesWrapper(features: feature.features),
      ],
    );
  }
}

class _NestedFeaturesWrapper extends StatelessWidget {
  final List<Feature> features;

  const _NestedFeaturesWrapper({required this.features});

  @override
  Widget build(BuildContext context) {
    final borderColor = Theme.of(context).colorScheme.primary;
    final leftBorderDecoration = BoxDecoration(
      border: Border(left: BorderSide(color: borderColor, width: 8)),
    );

    return Padding(
      padding: EdgeInsets.only(left: 6),
      child: Column(
        children: [
          ...features.map((f) {
            return Column(
              children: [
                Container(
                  decoration: leftBorderDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      RulesFeatureTitle(text: 'Feature: ${f.name}'),
                      RulesFeatureCards(feature: f),
                    ],
                  ),
                ),
                if (features.indexOf(f) < features.length - 1)
                  SizedBox(height: 8),
              ],
            );
          }),
        ],
      ),
    );
  }
}
