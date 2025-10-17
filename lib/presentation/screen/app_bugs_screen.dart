import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';

class AppBugsScreen extends StatelessWidget {
  static const String path = '/bugs';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const AppBugsScreen();
      },
    );
  }

  const AppBugsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(titleText: "Report Issues & Bugs"),
        body: Center(
          child: ListView(
            children: [
              const BasicCard(
                children: [
                  //TODO: implement bugs screen
                  BasicCardTitle(text: "Under Construction"),
                  BasicCardSection(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.construction),
                          SizedBox(width: 10),
                          Icon(Icons.construction),
                          SizedBox(width: 10),
                          Icon(Icons.construction),
                        ],
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
