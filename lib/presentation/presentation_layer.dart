import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/app_theme.dart';
import 'package:scrollrole/presentation/screen/app_bugs_screen.dart';
import 'package:scrollrole/presentation/screen/app_credits_screen.dart';
import 'package:scrollrole/presentation/screen/app_menu_screen.dart';
import 'package:scrollrole/presentation/screen/app_settings_screen.dart';
import 'package:scrollrole/presentation/screen/color_scheme_preview_screen.dart';
import 'package:scrollrole/presentation/screen/rules/rules_screen.dart';

class PresentationLayer extends StatelessWidget {
  static const debugMode = false;
  static const defaultPath = AppMenuScreen.path;

  const PresentationLayer({super.key});

  /// Pop all routes and replace route with the `defaultPath`.
  static void resetRouter(BuildContext context) {
    GoRouter router = GoRouter.of(context);
    while (router.canPop()) {
      router.pop();
    }
    router.replace(defaultPath);
  }

  @override
  Widget build(BuildContext context) {
    // Keep this MaterialApp consistent with SimpleAppWrapper
    return MaterialApp.router(
      debugShowCheckedModeBanner: debugMode,
      theme: AppTheme.defaultTheme,
      routerConfig: GoRouter(
        initialLocation: defaultPath,
        routes: [
          AppBugsScreen.route(),
          AppCreditsScreen.route(),
          AppMenuScreen.route(),
          AppSettingsScreen.route(),
          RulesScreen.route(),
          if (debugMode) ColorSchemePreviewScreen.route(),
        ],
      ),
    );
  }
}

/// Consolidate theming for other root components without a router
class SimpleAppWrapper extends StatelessWidget {
  final Widget? child;

  const SimpleAppWrapper({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    // Keep this MaterialApp consistent with PresentationLayer's MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: PresentationLayer.debugMode,
      theme: AppTheme.defaultTheme,
      home: child,
    );
  }
}
