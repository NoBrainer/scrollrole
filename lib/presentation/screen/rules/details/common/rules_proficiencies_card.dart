import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesProficienciesCard extends StatelessWidget {
  final List<Proficiency> proficiencies;

  const RulesProficienciesCard({super.key, required this.proficiencies});

  @override
  Widget build(BuildContext context) {
    if (proficiencies.isEmpty) {
      return SizedBox.shrink();
    }

    // TODO: Finish RulesProficienciesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Proficiencies'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
