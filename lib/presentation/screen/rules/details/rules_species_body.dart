import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/species.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_cards.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_title.dart';

class RulesSpeciesBody extends StatelessWidget {
  final String name;

  const RulesSpeciesBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Species species = getSpeciesByName(context, name)!;

    //TODO: Show species.iconId

    return ListView(
      shrinkWrap: true,
      children: [
        RulesFeatureTitle(text: name),
        RulesFeatureCards(feature: species),
      ],
    );
  }
}
