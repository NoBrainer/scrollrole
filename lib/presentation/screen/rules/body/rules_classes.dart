import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/class.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_list_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/rules_class_screen.dart';

class RulesClasses extends StatelessWidget {
  const RulesClasses({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final List<Class> classes = rulesConfig.classes;

    return RulesListCard(
      title: 'Classes',
      items: classes.map((c) => c.name).toList(),
      onView: (String? name) {
        context.push(RulesClassScreen.path, extra: name);
      },
    );
  }
}
