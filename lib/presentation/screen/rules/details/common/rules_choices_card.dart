import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/enum/list_option_type.dart';
import 'package:scrollrole/data/model/rules/query/choice.dart';
import 'package:scrollrole/data/model/rules/query/list_option.dart';
import 'package:scrollrole/data/model/rules/query/list_query.dart';
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

    ListQuery? query = choice.query;
    List<ListOption> options = query == null
        ? [...choice.options]
        : query.parseOptions(context: context, initialOptions: choice.options);
    List<ListOptionType> optionTypes = options
        .map((o) => o.type)
        .toSet()
        .toList();
    bool hasSingleOptionType = optionTypes.length == 1;
    bool hasFeatures = optionTypes.contains(ListOptionType.feature);

    String optionsLabel =
        'Pick $pick${allowDuplicate ? ' (duplicates allowed)' : ''} from:';
    if (hasSingleOptionType && !hasFeatures) {
      optionsLabel = optionsLabel.replaceFirst(
        'from',
        '${pick == 1 ? optionTypes.first.displayLong : optionTypes.first.displayLongPlural()} from',
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: titleStyle),
        RulesParagraphs(paragraphs: description),
        SizedBox(height: 8),
        Text(optionsLabel),
        _ChoiceOptions(options: options),
      ],
    );
  }
}

class _ChoiceOptions extends StatelessWidget {
  final List<ListOption> options;

  const _ChoiceOptions({required this.options});

  @override
  Widget build(BuildContext context) {
    List<ListOptionType> optionTypes = options
        .map((o) => o.type)
        .toSet()
        .toList();
    bool hasSingleOptionType = optionTypes.length == 1;
    bool hasFeatures = optionTypes.contains(ListOptionType.feature);
    bool showTypeLabel = !hasSingleOptionType || hasFeatures;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: options
          .map((o) => _ChoiceOption(option: o, showTypeLabel: showTypeLabel))
          .toList(),
    );
  }
}

class _ChoiceOption extends StatelessWidget {
  final ListOption option;
  final bool showTypeLabel;

  const _ChoiceOption({required this.option, this.showTypeLabel = true});

  @override
  Widget build(BuildContext context) {
    if (showTypeLabel) {
      return Text('- ${option.type.displayLong}: ${option.name}');
    } else {
      return Text('- ${option.name}');
    }
  }
}
