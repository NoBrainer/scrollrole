import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesSpeedCard extends StatelessWidget {
  final int? speed;

  const RulesSpeedCard({super.key, required this.speed});

  @override
  Widget build(BuildContext context) {
    if (speed == null) {
      return SizedBox.shrink();
    }

    // TODO: Support flying & swimming speed

    // TODO: Finish RulesSpeedCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Speed'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
