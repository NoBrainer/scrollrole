import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/feature/rules_feature_title.dart';

class RulesListBody extends StatelessWidget {
  final String name;

  const RulesListBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    //TODO: Finish RulesListBody
    return ListView(
      shrinkWrap: true,
      children: [
        RulesFeatureTitle(text: name),
        BasicCardSection(children: [Text('Under Construction')]),
      ],
    );
  }
}
