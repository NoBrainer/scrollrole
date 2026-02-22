import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesBackgroundScreen extends StatelessWidget {
  static const String path = '/rules/background';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const RulesBackgroundScreen();
      },
    );
  }

  const RulesBackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? name = GoRouterState.of(context).extra as String?;

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: 'Backgrounds',
          actions: [
            IconButton(
              tooltip: 'Add',
              icon: const Icon(Icons.add),
              onPressed: () {
                // TODO: implement add background
                SnackbarUtil.showMessage(
                  context,
                  'Add Background under construction.',
                );
              },
            ),
          ],
        ),
        body: BasicCard(
          children: [
            BasicCardTitle(text: name ?? 'All Backgrounds'),
            BasicCardSection(children: [Text('Under Construction')]),
          ],
        ),
      ),
    );
  }
}
