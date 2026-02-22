import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class AllListsBody extends StatelessWidget {
  const AllListsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: 'All Lists'),
        BasicCardSection(children: [Text('Under Construction')]),
      ],
    );
  }
}
