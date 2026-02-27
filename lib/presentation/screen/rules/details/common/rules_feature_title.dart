import 'package:flutter/material.dart';

class RulesFeatureTitle extends StatelessWidget {
  final String text;

  const RulesFeatureTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium?.copyWith();

    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Text(text, style: titleStyle),
    );
  }
}
