import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/class.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/feature/rules_feature_cards.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/feature/rules_feature_title.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_hit_points_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_proficiency_bonus_card.dart';
import 'package:scrollrole/presentation/screen/rules/details/common/rules_spell_casting_card.dart';

class RulesClassBody extends StatelessWidget {
  final String name;

  const RulesClassBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Class clazz = getClassByName(context, name)!;

    //TODO: Show clazz.iconId

    return ListView(
      shrinkWrap: true,
      children: [
        RulesFeatureTitle(text: name),
        RulesHitPointsCard(
          baseHitPoints: clazz.baseHitPoints,
          hitPointDie: clazz.hitPointDie,
        ),
        RulesProficiencyBonusCard(proficiencyBonus: clazz.proficiencyBonus),
        RulesFeatureCards(feature: clazz),
        RulesSpellCastingCard(spellCasting: clazz.spellCasting),
      ],
    );
  }
}
