import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/screen/rules/overview/section/rules_list_card.dart';
import 'package:scrollrole/presentation/screen/rules/rules_background_screen.dart';

class RulesBackgroundsSection extends StatelessWidget {
  const RulesBackgroundsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final List<Background> backgrounds = rulesConfig.backgrounds;

    return RulesListCard(
      title: 'Backgrounds',
      items: backgrounds.map((b) => b.name).toList(),
      onView: (String name) {
        context.push(RulesBackgroundScreen.path, extra: name);
      },
    );
  }
}
