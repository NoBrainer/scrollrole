import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class RulesClassScreen extends StatelessWidget {
  static const String path = '/rules/class';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const RulesClassScreen();
      },
    );
  }

  const RulesClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? name = GoRouterState.of(context).extra as String?;

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: 'Classes',
          actions: [
            IconButton(
              tooltip: 'Add',
              icon: const Icon(Icons.add),
              onPressed: () {
                // TODO: implement add class
                SnackbarUtil.showMessage(
                  context,
                  'Add Class under construction.',
                );
              },
            ),
          ],
        ),
        body: BasicCard(
          children: [
            BasicCardTitle(text: name ?? 'All Classes'),
            BasicCardSection(children: [Text('Under Construction')]),
          ],
        ),
      ),
    );
  }
}
