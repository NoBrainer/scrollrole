import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/util/log_util.dart';

class RulesLists extends StatelessWidget {
  const RulesLists({super.key});

  @override
  Widget build(BuildContext context) {
    RulesConfig rulesConfig = getRulesConfig(context);
    var lists = rulesConfig.lists;
    LogUtil.print('Displaying lists: ${lists.props}');

    //TODO: Display lists
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Lists'),
        BasicCardSection(
          children: [
            Text('- Armor'),
            Text('- Background Features'),
            Text('- Equipment Packs'),
            Text('- Feats'),
            Text('- Gear'),
            Text('- Languages'),
            Text('- Proficiencies'),
            Text('- Spells'),
            Text('- Tools'),
            Text('- Weapons'),
          ],
        ),
      ],
    );
  }
}
