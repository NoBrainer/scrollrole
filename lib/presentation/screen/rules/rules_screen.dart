import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
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
    // TODO: Show loading spinner while parsing
    // TODO: Load default config
    // TODO: Display default config
    // TODO: Save state in blocs
    // TODO: Gracefully handle parsing issues
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: "Rules",
          actions: [
            IconButton(
              tooltip: "Edit",
              icon: const Icon(Icons.edit),
              onPressed: () {
                DialogUtil.showLoadingSpinner(context, text: "Loading...");
                SnackbarUtil.showMessage(
                  context,
                  "Edit Rules under construction.",
                );
              },
            ),
          ],
        ),
        body: Center(
          child: ListView(
            children: [
              BasicCard(
                children: [
                  BasicCardTitle(text: "Backgrounds"),
                  BasicCardSection(children: [Text("TBD")]),
                ],
              ),
              BasicCard(
                children: [
                  BasicCardTitle(text: "Classes"),
                  BasicCardSection(children: [Text("TBD")]),
                ],
              ),
              BasicCard(
                children: [
                  BasicCardTitle(text: "Races"),
                  BasicCardSection(children: [Text("TBD")]),
                ],
              ),
              BasicCard(
                children: [
                  BasicCardTitle(text: "Lists"),
                  BasicCardSection(
                    children: [
                      Text("- Armor"),
                      Text("- Background Features"),
                      Text("- Equipment Packs"),
                      Text("- Feats"),
                      Text("- Gear"),
                      Text("- Languages"),
                      Text("- Proficiencies"),
                      Text("- Spells"),
                      Text("- Tools"),
                      Text("- Weapons"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
