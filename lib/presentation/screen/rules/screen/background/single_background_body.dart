import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/feature_rules_cards.dart';
import 'package:scrollrole/presentation/screen/rules/screen/common/name_rules_card.dart';

class SingleBackgroundBody extends StatelessWidget {
  final String name;

  const SingleBackgroundBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Background background = getBackgroundByName(context, name)!;

    return ListView(
      shrinkWrap: true,
      children: [
        NameRulesCard(iconId: background.iconId, name: name),
        FeatureRulesCards(feature: background),
      ],
    );
  }
}
