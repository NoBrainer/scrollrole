import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/data/model/rules/species.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_list_card.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesSpecies extends StatelessWidget {
  const RulesSpecies({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final List<Species> species = rulesConfig.species;

    return RulesListCard(
      title: 'Species',
      items: species.map((s) => s.name).toList(),
      onView: () {
        //TODO: Implement view species
        SnackbarUtil.showMessage(context, "View 'Species' under construction");
      },
    );
  }
}
