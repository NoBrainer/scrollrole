import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_list_card.dart';

class RulesLists extends StatelessWidget {
  static final List<String> _names = [
    'Armor',
    'Background Features',
    'Equipment Packs',
    'Feats',
    'Features',
    'Gear',
    'Languages',
    'Proficiencies',
    'Spells',
    'Tools',
    'Weapons',
  ];

  const RulesLists({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Show list details
    return RulesListCard(
      title: 'Lists',
      items: _names.map((name) => name).toList(),
    );
  }
}
