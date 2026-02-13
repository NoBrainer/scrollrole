import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/util/log_util.dart';

class RulesClasses extends StatelessWidget {
  const RulesClasses({super.key});

  @override
  Widget build(BuildContext context) {
    RulesConfig rulesConfig = getRulesConfig(context);
    var classes = rulesConfig.classes;
    LogUtil.print('Displaying ${classes.length} classes');

    //TODO: Display classes
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Classes'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
