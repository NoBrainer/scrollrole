import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class UnlockablesRulesCard extends StatelessWidget {
  final List<Unlockable> unlockables;

  const UnlockablesRulesCard({super.key, required this.unlockables});

  @override
  Widget build(BuildContext context) {
    // TODO: Finish UnlockablesRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Unlockables'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
