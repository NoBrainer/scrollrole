import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/enum/proficiency_type.dart';
import 'package:scrollrole/data/model/rules/parts/proficiency.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/util/string_util.dart';

class RulesProficienciesCard extends StatelessWidget {
  final List<Proficiency> proficiencies;

  const RulesProficienciesCard({super.key, required this.proficiencies});

  @override
  Widget build(BuildContext context) {
    if (proficiencies.isEmpty) {
      return SizedBox.shrink();
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Proficiencies'),
        BasicCardSection(
          children: proficiencies
              .map((p) => _ProficiencyItem(proficiency: p))
              .toList(),
        ),
      ],
    );
  }
}

class _ProficiencyItem extends StatelessWidget {
  final Proficiency proficiency;

  const _ProficiencyItem({required this.proficiency});

  @override
  Widget build(BuildContext context) {
    String name = proficiency.name;
    ProficiencyType type = proficiency.type;
    List<String> tags = proficiency.tags;

    String nameStr = StringUtil.capitalize(name);
    String tagStr = '';
    if (tags.isNotEmpty) {
      tagStr = ' [tags: ${tags.join(',')}]';
    }

    return Text('$nameStr (${type.display})$tagStr');
  }
}
