import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/util/log_util.dart';

class RulesSpecies extends StatelessWidget {
  const RulesSpecies({super.key});

  @override
  Widget build(BuildContext context) {
    RulesConfig rulesConfig = getRulesConfig(context);
    var species = rulesConfig.species;
    LogUtil.print('Displaying ${species.length} species');

    //TODO: Display species
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Species'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
