import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/orientated_list.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/presentation/presentation_layer.dart';
import 'package:scrollrole/presentation/screen/app_bugs_screen.dart';
import 'package:scrollrole/presentation/screen/app_credits_screen.dart';
import 'package:scrollrole/presentation/screen/app_settings_screen.dart';
import 'package:scrollrole/presentation/screen/color_scheme_preview_screen.dart';

class AppMenuScreen extends StatelessWidget {
  static const String path = '/';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const AppMenuScreen();
      },
    );
  }

  const AppMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: StyledAppBar(
          titleText: "ScrollRole",
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              tooltip: "App Settings",
              icon: const Icon(Icons.settings),
              onPressed: () => context.push(AppSettingsScreen.path),
            ),
            if (PresentationLayer.debugMode)
              IconButton(
                tooltip: "Color Scheme Preview",
                icon: Icon(Icons.color_lens_outlined),
                onPressed: () => context.push(ColorSchemePreviewScreen.path),
              ),
          ],
        ),
        body: Center(
          child: OrientatedList(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: OrientatedList(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    const Tooltip(
                      message: "Walking Character",
                      child: Text("[UNDER CONSTRUCTION]"),
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    IconButton(
                      tooltip: "Play",
                      icon: const Icon(Icons.play_circle),
                      iconSize: 180,
                      // TODO: implement
                      // onPressed: () => context.push(ExampleScreen.path),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              OrientatedList(
                children: [
                  IconButton(
                    tooltip: "Report Issues and Bugs",
                    icon: const Icon(Icons.bug_report_outlined),
                    onPressed: () => context.push(AppBugsScreen.path),
                  ),
                  IconButton(
                    tooltip: "Credits",
                    icon: const Icon(Icons.receipt_long_outlined),
                    onPressed: () => context.push(AppCreditsScreen.path),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
