import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/query/unlockable.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesUnlockablesCard extends StatelessWidget {
  final List<Unlockable> unlockables;

  const RulesUnlockablesCard({super.key, required this.unlockables});

  @override
  Widget build(BuildContext context) {
    if (unlockables.isEmpty) {
      return SizedBox.shrink();
    }

    // TODO: Finish RulesUnlockablesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Unlockables'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
