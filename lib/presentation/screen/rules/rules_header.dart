import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/border_container.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesHeader extends StatelessWidget {
  const RulesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final String name = rulesConfig.name;
    final String description = rulesConfig.description;
    final String url = rulesConfig.url;

    final bool hasDescription = description.trim().isNotEmpty;
    final bool hasUrl = url.trim().isNotEmpty;

    final theme = Theme.of(context);
    final textColor = theme.colorScheme.onPrimaryContainer;
    final textStyle = theme.textTheme.bodyMedium?.copyWith(color: textColor);

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: BasicCard.paddingNum),
          BasicCardTitle(text: name),
          SizedBox(height: 4),
          BasicCardSection(
            children: [
              hasDescription
                  ? Text(description, style: textStyle)
                  : SizedBox.shrink(),
              hasDescription && hasUrl
                  ? SizedBox.shrink()
                  : SizedBox(height: 4),
              hasUrl ? Text(url, style: textStyle) : SizedBox.shrink(),
            ],
          ),
          SizedBox(height: 8),
          _ActionsBar(
            onSwitch: () {
              //TODO: Implement switch rules
              SnackbarUtil.showMessage(
                context,
                'Switch rules under construction',
              );
            },
            onView: () {
              //TODO: Implement view rules
              SnackbarUtil.showMessage(
                context,
                'View rules under construction',
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ActionsBar extends StatelessWidget {
  final Function() onSwitch;
  final Function() onView;

  const _ActionsBar({required this.onSwitch, required this.onView});

  @override
  Widget build(BuildContext context) {
    return BorderContainer(
      borderTop: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ActionButton(
            tooltip: 'View Rules',
            iconData: Icons.visibility,
            onPressed: onView,
          ),
          _ActionButton(
            tooltip: 'Switch Rules',
            iconData: Icons.swap_horiz,
            onPressed: onSwitch,
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  final String? tooltip;

  const _ActionButton({required this.iconData, this.onPressed, this.tooltip});

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.onPrimaryContainer;

    return IconButton(
      icon: Icon(iconData, color: iconColor),
      onPressed: onPressed,
      tooltip: tooltip,
      visualDensity: VisualDensity.compact,
    );
  }
}
