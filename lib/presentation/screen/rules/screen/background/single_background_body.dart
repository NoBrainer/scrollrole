import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';

class SingleBackgroundBody extends StatelessWidget {
  final String name;

  const SingleBackgroundBody({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final Background background = getBackgroundByName(context, name)!;
    final theme = Theme.of(context);
    final borderColor = theme.colorScheme.onPrimaryContainer;
    //TODO: WIP

    return BasicCard(
      children: [
        ListView(
          padding: const EdgeInsets.only(
            left: BasicCard.paddingNum,
            right: BasicCard.paddingNum,
          ),
          shrinkWrap: true,
          children: [
            Divider(color: borderColor),
            Text('Description:'),
            ...background.description.map((d) => Text(d)),
            Divider(color: borderColor),
            Text('Description Short:'),
            Text(
              background.descriptionShort.isEmpty
                  ? '(None)'
                  : background.descriptionShort,
            ),
          ],
        ),
      ],
    );
  }
}
