import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class DescriptionRulesCard extends StatelessWidget {
  final String abbreviation;
  final List<String> paragraphs;

  const DescriptionRulesCard({
    super.key,
    required this.abbreviation,
    required this.paragraphs,
  });

  @override
  Widget build(BuildContext context) {
    bool hasAbbreviation = abbreviation.isNotEmpty;
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Description'),
        BasicCardSection(children: [...paragraphs.map((d) => Text(d))]),
        if (hasAbbreviation) BasicCardTitle(text: 'Description (short)'),
        if (hasAbbreviation) BasicCardSection(children: [Text(abbreviation)]),
      ],
    );
  }
}
