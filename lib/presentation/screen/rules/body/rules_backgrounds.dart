import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_list_card.dart';

class RulesBackgrounds extends StatelessWidget {
  const RulesBackgrounds({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final List<Background> backgrounds = rulesConfig.backgrounds;

    //TODO: Show background details
    return RulesListCard(
      title: 'Backgrounds',
      items: backgrounds.map((b) => b.name).toList(),
    );
  }
}
