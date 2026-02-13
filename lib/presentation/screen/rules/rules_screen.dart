import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/presentation/screen/rules/rules_body.dart';
import 'package:scrollrole/util/dialog_util.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesScreen extends StatelessWidget {
  static const String path = '/rules';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const RulesScreen();
      },
    );
  }

  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: 'Rules',
          actions: [
            IconButton(
              tooltip: 'Edit',
              icon: const Icon(Icons.edit),
              onPressed: () {
                DialogUtil.showLoadingSpinner(context, text: 'Loading...');
                SnackbarUtil.showMessage(
                  context,
                  'Edit Rules under construction.',
                );
              },
            ),
          ],
        ),
        body: RulesBody(),
      ),
    );
  }
}
