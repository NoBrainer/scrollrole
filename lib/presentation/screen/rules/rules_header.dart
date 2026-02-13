import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesHeader extends StatelessWidget {
  const RulesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    RulesConfig rulesConfig = getRulesConfig(context);
    String name = rulesConfig.name;
    String description = rulesConfig.description;
    String url = rulesConfig.url;

    return BasicCard(
      children: [
        BasicCardTitle(text: name),
        BasicCardSection(
          children: [Text(description), SizedBox(height: 4), Text(url)],
        ),
      ],
    );
  }
}
