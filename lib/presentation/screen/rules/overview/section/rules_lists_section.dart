import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/screen/rules/overview/section/rules_list_card.dart';
import 'package:scrollrole/presentation/screen/rules/rules_list_screen.dart';

class RulesListsSection extends StatelessWidget {
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

  const RulesListsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RulesListCard(
      title: 'Lists',
      items: _names.map((name) => name).toList(),
      onView: (String name) {
        context.push(RulesListScreen.path, extra: name);
      },
    );
  }
}
