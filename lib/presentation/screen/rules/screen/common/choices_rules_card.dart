import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class ChoicesRulesCard extends StatelessWidget {
  final List<Choice> choices;

  const ChoicesRulesCard({super.key, required this.choices});

  @override
  Widget build(BuildContext context) {
    // TODO: Finish ChoicesRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Choices'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
