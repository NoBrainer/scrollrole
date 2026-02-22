import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/presentation/screen/rules/screen/species/all_species_body.dart';
import 'package:scrollrole/presentation/screen/rules/screen/species/single_species_body.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesSpeciesScreen extends StatelessWidget {
  static const String path = '/rules/species';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const RulesSpeciesScreen();
      },
    );
  }

  const RulesSpeciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? name = GoRouterState.of(context).extra as String?;

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: 'Species',
          actions: [
            IconButton(
              tooltip: 'Add',
              icon: const Icon(Icons.add),
              onPressed: () {
                // TODO: implement add species
                SnackbarUtil.showMessage(
                  context,
                  'Add Species under construction.',
                );
              },
            ),
          ],
        ),
        body: name == null ? AllSpeciesBody() : SingleSpeciesBody(name: name),
      ),
    );
  }
}
