import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class SingleClassBody extends StatelessWidget {
  final String name;

  const SingleClassBody({super.key, required this.name});

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
