import 'package:flutter/material.dart';
import 'package:scrollrole/data/model/rules/items/equipment.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class RulesEquipmentCard extends StatelessWidget {
  final List<Equipment> equipment;

  const RulesEquipmentCard({super.key, required this.equipment});

  @override
  Widget build(BuildContext context) {
    if (equipment.isEmpty) {
      return SizedBox.shrink();
    }

    return BasicCard(
      children: [
        BasicCardTitle(text: 'Equipment'),
        BasicCardSection(
          children: equipment.map((e) => _EquipmentItem(equipment: e)).toList(),
        ),
      ],
    );
  }
}

class _EquipmentItem extends StatelessWidget {
  final Equipment equipment;

  const _EquipmentItem({required this.equipment});

  @override
  Widget build(BuildContext context) {
    double quantity = equipment.quantity;
    String name = equipment.name;
    String? units = equipment.units;

    String quantityStr = quantity.truncateToDouble() == quantity
        ? '${quantity.toInt()}'
        : '$quantity';
    String unitsStr = units == null ? '' : '$units ';

    return Text('$quantityStr $unitsStr$name');
  }
}
