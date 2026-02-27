import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class SpeedRulesCard extends StatelessWidget {
  final int? speed;

  const SpeedRulesCard({super.key, required this.speed});

  @override
  Widget build(BuildContext context) {
    // TODO: Finish SpeedRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Speed'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
