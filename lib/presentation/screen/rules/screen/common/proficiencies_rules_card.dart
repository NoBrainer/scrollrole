import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class ProficienciesRulesCard extends StatelessWidget {
  final List<Proficiency> proficiencies;

  const ProficienciesRulesCard({super.key, required this.proficiencies});

  @override
  Widget build(BuildContext context) {
    // TODO: Finish ProficienciesRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Proficiencies'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
