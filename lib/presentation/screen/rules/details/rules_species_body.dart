import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/species.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_cards.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_name_card.dart';

class RulesSpeciesBody extends StatelessWidget {
  final String name;

  const RulesSpeciesBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Species species = getSpeciesByName(context, name)!;

    return ListView(
      shrinkWrap: true,
      children: [
        RulesNameCard(iconId: species.iconId, name: name),
        RulesFeatureCards(feature: species),
      ],
    );
  }
}
