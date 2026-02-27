import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/enum/dice_type.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesHitPointsCard extends StatelessWidget {
  final int baseHitPoints;
  final DiceType hitPointDie;

  const RulesHitPointsCard({
    super.key,
    required this.baseHitPoints,
    required this.hitPointDie,
  });

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Hit Points'),
        BasicCardSection(
          children: [
            Text('Base Hit Points: $baseHitPoints'),
            Text('Hit Point Die: ${hitPointDie.display}'),
          ],
        ),
      ],
    );
  }
}
