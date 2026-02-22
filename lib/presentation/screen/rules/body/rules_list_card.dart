import 'package:flutter/material.dart';

class RulesListCard extends StatelessWidget {
  final List<String> items;
  final Function(String?)? onView;
  final String title;

  const RulesListCard({
    super.key,
    required this.items,
    this.onView,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.titleMedium?.copyWith(
      color: theme.colorScheme.onPrimaryContainer,
    );

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () => onView?.call(null),
            child: Text(title, style: titleStyle),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...items.map(
                (name) => TextButton(
                  onPressed: () => onView?.call(name),
                  child: Text(name),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
