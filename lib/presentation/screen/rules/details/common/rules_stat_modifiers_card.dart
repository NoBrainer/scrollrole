import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/enum/stat_type.dart';
import 'package:scrollrole/data/model/rules/parts/stat_modifier.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesStatModifiersCard extends StatelessWidget {
  final List<StatModifier> statModifiers;

  const RulesStatModifiersCard({super.key, required this.statModifiers});

  @override
  Widget build(BuildContext context) {
    if (statModifiers.isEmpty) {
      return SizedBox.shrink();
    }

    List<StatType> types = statModifiers.map((p) => p.type).toList();
    types.sort();

    Map<StatType, List<StatModifier>> typeMap = {};
    for (var m in statModifiers) {
      typeMap.update(m.type, (list) {
        list.add(m);
        return list;
      }, ifAbsent: () => [m]);
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Stat Modifiers'),
        BasicCardSection(
          children: typeMap.keys.map((type) {
            return _StatTypeSection(type: type, modifiers: typeMap[type]!);
          }).toList(),
        ),
      ],
    );
  }
}

class _StatTypeSection extends StatelessWidget {
  final List<StatModifier> modifiers;
  final StatType type;

  const _StatTypeSection({required this.modifiers, required this.type});

  @override
  Widget build(BuildContext context) {
    String label = type.display;

    modifiers.sort();
    String listStr = modifiers.map((m) => m.toDisplay()).join(', ');

    return Text('- $label: $listStr');
  }
}
