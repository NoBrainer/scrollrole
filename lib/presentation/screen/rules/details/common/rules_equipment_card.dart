import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesEquipmentCard extends StatelessWidget {
  final List<Equipment> equipment;

  const RulesEquipmentCard({super.key, required this.equipment});

  @override
  Widget build(BuildContext context) {
    // TODO: Finish EquipmentRulesCard
    return BasicCard(
      children: [
        BasicCardTitle(text: 'Equipment'),
        BasicCardSection(children: [Text('TBD')]),
      ],
    );
  }
}
