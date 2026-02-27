import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesChoicesCard extends StatelessWidget {
  final List<Choice> choices;

  const RulesChoicesCard({super.key, required this.choices});

  @override
  Widget build(BuildContext context) {
    if (choices.isEmpty) {
      return SizedBox.shrink();
    }

    // TODO: Finish RulesChoicesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Choices'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
