import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/util/log_util.dart';

class RulesBackgrounds extends StatelessWidget {
  const RulesBackgrounds({super.key});

  @override
  Widget build(BuildContext context) {
    RulesConfig rulesConfig = getRulesConfig(context);
    var backgrounds = rulesConfig.backgrounds;
    LogUtil.print('Displaying ${backgrounds.length} backgrounds');

    //TODO: Display backgrounds
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Backgrounds'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
