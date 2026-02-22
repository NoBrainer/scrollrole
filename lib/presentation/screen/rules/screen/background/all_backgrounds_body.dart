import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class AllBackgroundsBody extends StatelessWidget {
  const AllBackgroundsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: 'All Backgrounds'),
        BasicCardSection(children: [Text('Under Construction')]),
      ],
    );
  }
}
