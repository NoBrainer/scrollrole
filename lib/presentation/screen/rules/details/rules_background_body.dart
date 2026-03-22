import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/feature/rules_feature_cards.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/feature/rules_feature_title.dart';

class RulesBackgroundBody extends StatelessWidget {
  final String name;

  const RulesBackgroundBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Background background = getBackgroundByName(context, name)!;

    //TODO: Show background.iconId

    return ListView(
      shrinkWrap: true,
      children: [
        RulesFeatureTitle(text: name),
        RulesFeatureCards(feature: background),
      ],
    );
  }
}
