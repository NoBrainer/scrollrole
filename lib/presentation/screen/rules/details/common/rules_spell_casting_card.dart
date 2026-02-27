import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/parts/spell_casting.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesSpellCastingCard extends StatelessWidget {
  final SpellCasting? spellCasting;

  const RulesSpellCastingCard({super.key, this.spellCasting});

  @override
  Widget build(BuildContext context) {
    if (spellCasting == null) {
      return SizedBox.shrink();
    }

    // TODO: Finish RulesSpellCastingCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Spell Casting'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
