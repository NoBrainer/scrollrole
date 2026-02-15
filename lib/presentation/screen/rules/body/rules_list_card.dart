import 'package:flutter/material.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesListCard extends StatelessWidget {
  final List<String> items;
  final Function()? onView;
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
            onPressed: onView,
            child: Text(title, style: titleStyle),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ...items.map(
                (str) => TextButton(
                  onPressed: () {
                    //TODO: Implement part of rules card
                    SnackbarUtil.showMessage(
                      context,
                      "View '$title > $str' under construction",
                    );
                  },
                  child: Text(str),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
