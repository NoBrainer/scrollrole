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

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Feature Variables'),
        BasicCardSection(
          children: variables
              .map((v) => _FeatureVariable(variable: v))
              .toList(),
        ),
      ],
    );
  }
}

class _FeatureVariable extends StatelessWidget {
  final FeatureVariable variable;

  const _FeatureVariable({required this.variable});

  @override
  Widget build(BuildContext context) {
    String displayName = variable.displayName;
    String key = variable.key;
    dynamic value = variable.value;

    String label = displayName.isEmpty ? key : displayName;

    return Text('- $label: $value');
  }
}
