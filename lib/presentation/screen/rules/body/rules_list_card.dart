import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesListCard extends StatelessWidget {
  final List<String> items;
  final String title;

  const RulesListCard({super.key, required this.items, required this.title});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: title),
        BasicCardSection(children: [...items.map((str) => Text('- $str'))]),
      ],
    );
  }
}
