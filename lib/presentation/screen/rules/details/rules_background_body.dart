import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_feature_cards.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_name_card.dart';

class RulesBackgroundBody extends StatelessWidget {
  final String name;

  const RulesBackgroundBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Background background = getBackgroundByName(context, name)!;

    return ListView(
      shrinkWrap: true,
      children: [
        RulesNameCard(iconId: background.iconId, name: name),
        RulesFeatureCards(feature: background),
      ],
    );
  }
}
