import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

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

    return BasicCard(
      children: [
        BasicCardTitle(text: name),
        BasicCardSection(
          children: [
            hasDescription ? Text(description) : SizedBox.shrink(),
            hasDescription && hasUrl ? SizedBox.shrink() : SizedBox(height: 4),
            hasUrl ? Text(url) : SizedBox.shrink(),
          ],
        ),
      ],
    );
  }
}
