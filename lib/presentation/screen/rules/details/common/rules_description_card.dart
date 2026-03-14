import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

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

    // Add space between each paragraph
    List<Widget> paragraphWidgets = [];
    for (var paragraph in paragraphs) {
      if (paragraphWidgets.isNotEmpty) {
        paragraphWidgets.add(SizedBox(height: 8));
      }
      paragraphWidgets.add(Text(paragraph));
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Description'),
        BasicCardSection(children: paragraphWidgets),
        if (hasAbbreviation) BasicCardTitle(text: 'Shorthand'),
        if (hasAbbreviation) BasicCardSection(children: [Text(abbreviation)]),
      ],
    );
  }
}
