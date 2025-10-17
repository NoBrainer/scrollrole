import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {
  final List<Widget> children;

  const BasicCard({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
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
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: crossAxisAlignment, children: children),
    );
  }
}
