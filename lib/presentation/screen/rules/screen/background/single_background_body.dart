import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class SingleBackgroundBody extends StatelessWidget {
  final String name;

  const SingleBackgroundBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: name),
        BasicCardSection(children: [Text('Under Construction')]),
      ],
    );
  }
}
