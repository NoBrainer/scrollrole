import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_paragraphs.dart';

class RulesDescriptionCard extends StatelessWidget {
  final String abbreviation;
  final List<String> paragraphs;

  const RulesDescriptionCard({
    super.key,
    required this.abbreviation,
    required this.paragraphs,
  });

  @override
  Widget build(BuildContext context) {
    bool hasAbbreviation = abbreviation.isNotEmpty;

    if (paragraphs.isEmpty && !hasAbbreviation) {
      return SizedBox.shrink();
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Description'),
        BasicCardSection(children: [RulesParagraphs(paragraphs: paragraphs)]),
        if (hasAbbreviation) BasicCardTitle(text: 'Shorthand'),
        if (hasAbbreviation) BasicCardSection(children: [Text(abbreviation)]),
      ],
    );
  }
}
