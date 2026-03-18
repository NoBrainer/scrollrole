import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/enum/proficiency_type.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesProficienciesCard extends StatelessWidget {
  final List<Proficiency> proficiencies;

  const RulesProficienciesCard({super.key, required this.proficiencies});

  @override
  Widget build(BuildContext context) {
    if (proficiencies.isEmpty) {
      return SizedBox.shrink();
    }

    List<ProficiencyType> types = proficiencies.map((p) => p.type).toList();
    types.sort();

    Map<ProficiencyType, List<Proficiency>> typeMap = {};
    for (var p in proficiencies) {
      typeMap.update(p.type, (list) {
        list.add(p);
        return list;
      }, ifAbsent: () => [p]);
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Proficiencies'),
        BasicCardSection(
          children: typeMap.keys.map((type) {
            return _ProficiencyType(proficiencies: typeMap[type]!, type: type);
          }).toList(),
        ),
      ],
    );
  }
}

class _ProficiencyType extends StatelessWidget {
  final List<Proficiency> proficiencies;
  final ProficiencyType type;

  const _ProficiencyType({required this.proficiencies, required this.type});

  @override
  Widget build(BuildContext context) {
    String label = type.display;

    proficiencies.sort();
    String listStr = proficiencies.map((p) => p.toDisplay()).join(', ');

    return Text('- $label: $listStr');
  }
}
