import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesNameCard extends StatelessWidget {
  final String? iconId;
  final String name;

  const RulesNameCard({super.key, this.iconId, required this.name});

  @override
  Widget build(BuildContext context) {
    //TODO: Use iconId
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Name'),
        BasicCardSection(children: [Text(name)]),
      ],
    );
  }
}
