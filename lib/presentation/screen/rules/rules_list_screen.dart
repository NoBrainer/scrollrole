import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/presentation/screen/rules/details/rules_list_body.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesListScreen extends StatelessWidget {
  static const String path = '/rules/list';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const RulesListScreen();
      },
    );
  }

  const RulesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = GoRouterState.of(context).extra as String;

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: 'Lists',
          actions: [
            IconButton(
              tooltip: 'Add',
              icon: const Icon(Icons.add),
              onPressed: () {
                // TODO: implement add list
                SnackbarUtil.showMessage(
                  context,
                  'Add List under construction.',
                );
              },
            ),
          ],
        ),
        body: RulesListBody(name: name),
      ),
    );
  }
}
