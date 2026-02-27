import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/feature_variable.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesFeatureVariablesCard extends StatelessWidget {
  final List<FeatureVariable> variables;

  const RulesFeatureVariablesCard({super.key, required this.variables});

  @override
  Widget build(BuildContext context) {
    if (variables.isEmpty) {
      return SizedBox.shrink();
    }

    // TODO: Finish RulesFeatureVariablesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Feature Variables'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
