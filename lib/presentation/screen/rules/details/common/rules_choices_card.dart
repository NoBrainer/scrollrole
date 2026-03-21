import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_paragraphs.dart';

class RulesChoicesCard extends StatelessWidget {
  final List<Choice> choices;

  const RulesChoicesCard({super.key, required this.choices});

  @override
  Widget build(BuildContext context) {
    if (choices.isEmpty) {
      return SizedBox.shrink();
    }

    List<Widget> choiceItems = choices
        .map((c) => _ChoiceItem(choice: c))
        .toList();
    List<Widget> widgets = [];
    for (Widget choiceItem in choiceItems) {
      if (widgets.isNotEmpty) {
        // Add space between each choice
        widgets.add(SizedBox(height: 16));
      }
      widgets.add(choiceItem);
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Choices'),
        BasicCardSection(children: widgets),
      ],
    );
  }
}

class _ChoiceItem extends StatelessWidget {
  final Choice choice;

  const _ChoiceItem({required this.choice});

  @override
  Widget build(BuildContext context) {
    String name = choice.name;
    List<String> description = choice.description;
    int pick = choice.pick;
    bool allowDuplicate = choice.allowDuplicate;

    final titleStyle = Theme.of(context).textTheme.bodyLarge?.copyWith();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: titleStyle),
        RulesParagraphs(paragraphs: description),
        SizedBox(height: 8),
        Text('Pick $pick ${allowDuplicate ? '(duplicates allowed)' : ''}'),
      ],
    );
  }
}
