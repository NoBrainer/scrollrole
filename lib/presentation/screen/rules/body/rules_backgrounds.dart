import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/model/rules/background.dart';
import 'package:scrollrole/data/model/rules/rules_config.dart';
import 'package:scrollrole/presentation/screen/rules/body/rules_list_card.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesBackgrounds extends StatelessWidget {
  const RulesBackgrounds({super.key});

  @override
  Widget build(BuildContext context) {
    final RulesConfig rulesConfig = getRulesConfig(context);
    final List<Background> backgrounds = rulesConfig.backgrounds;

    return RulesListCard(
      title: 'Backgrounds',
      items: backgrounds.map((b) => b.name).toList(),
      onView: () {
        //TODO: Implement view backgrounds
        SnackbarUtil.showMessage(
          context,
          "View 'Backgrounds' under construction",
        );
      },
    );
  }
}
