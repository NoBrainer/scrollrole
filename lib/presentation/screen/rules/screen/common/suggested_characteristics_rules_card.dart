import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/suggested_characteristics.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class SuggestedCharacteristicsRulesCard extends StatelessWidget {
  final SuggestedCharacteristics? suggestedCharacteristics;

  const SuggestedCharacteristicsRulesCard({
    super.key,
    required this.suggestedCharacteristics,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Finish SuggestedCharacteristicsRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Suggested Characteristics'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
