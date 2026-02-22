import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class AllClassesBody extends StatelessWidget {
  const AllClassesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BasicCard(
      children: [
        BasicCardTitle(text: 'All Classes'),
        BasicCardSection(children: [Text('Under Construction')]),
      ],
    );
  }
}
