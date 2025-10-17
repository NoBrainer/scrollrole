import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';

class AppCreditsScreen extends StatelessWidget {
  static const String path = '/credits';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const AppCreditsScreen();
      },
    );
  }

  const AppCreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(titleText: "Credits"),
        body: Center(
          child: ListView(
            children: [
              const BasicCard(
                children: [
                  BasicCardTitle(text: "People"),
                  BasicCardSection(
                    children: [
                      SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Vincent Incarvite - Developer, Designer",
                            ),
                            TextSpan(text: "\n"),
                            TextSpan(text: "Destinie Carbone - Logo Engineer"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const BasicCard(
                children: [
                  BasicCardTitle(text: "Technology Stack"),
                  BasicCardSection(
                    children: [
                      SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Bloc - State Management - bloclibrary.dev",
                            ),
                            TextSpan(text: "\n"),
                            TextSpan(text: "Flutter - Framework - flutter.dev"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const BasicCard(
                children: [
                  BasicCardTitle(text: "Resources"),
                  BasicCardSection(
                    children: [
                      SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Font Awesome Flutter\n - "
                                  "fontawesome.com/icons",
                            ),
                            TextSpan(text: "\n"),
                            TextSpan(text: "Game Icons - game-icons.net"),
                          ],
                        ),
                      ),
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
