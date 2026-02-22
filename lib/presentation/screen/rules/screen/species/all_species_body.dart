import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class AllSpeciesBody extends StatelessWidget {
  const AllSpeciesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: 'All Species'),
        BasicCardSection(children: [Text('Under Construction')]),
      ],
    );
  }
}
