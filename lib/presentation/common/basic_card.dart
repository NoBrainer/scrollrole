import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {
  final List<Widget> children;

  static const double paddingNum = 10;

  const BasicCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          top: BasicCard.paddingNum,
          bottom: BasicCard.paddingNum,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}

class BasicCardTitle extends StatelessWidget {
  final String text;

  const BasicCardTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.colorScheme.onPrimaryContainer;
    final titleStyle = theme.textTheme.titleLarge?.copyWith(color: textColor);

    return Padding(
      padding: const EdgeInsets.only(
        left: BasicCard.paddingNum,
        right: BasicCard.paddingNum,
      ),
      child: Text(text, style: titleStyle),
    );
  }
}

class BasicCardSection extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  const BasicCardSection({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.stretch,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: BasicCard.paddingNum,
        right: BasicCard.paddingNum,
      ),
      child: Column(crossAxisAlignment: crossAxisAlignment, children: children),
    );
  }
}
