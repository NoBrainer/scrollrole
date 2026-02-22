import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/data/model/rules/species.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_list_card.dart';
import 'package:scrollrole/presentation/screen/rules/screen/rules_species_screen.dart';

class RulesSpecies extends StatelessWidget {
  const RulesSpecies({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final List<Species> species = rulesConfig.species;

    return RulesListCard(
      title: 'Species',
      items: species.map((s) => s.name).toList(),
      onView: (String? name) {
        context.push(RulesSpeciesScreen.path, extra: name);
      },
    );
  }
}
