import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesStatModifiersCard extends StatelessWidget {
  final List<StatModifier> statModifiers;

  const RulesStatModifiersCard({super.key, required this.statModifiers});

  @override
  Widget build(BuildContext context) {
    // TODO: Finish StatModifiersRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Stat Modifiers'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
