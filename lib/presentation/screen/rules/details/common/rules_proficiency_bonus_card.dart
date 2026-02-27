import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesProficiencyBonusCard extends StatelessWidget {
  final int proficiencyBonus;

  const RulesProficiencyBonusCard({super.key, required this.proficiencyBonus});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Proficiency Bonus'),
        BasicCardSection(children: [Text('+$proficiencyBonus')]),
      ],
    );
  }
}
