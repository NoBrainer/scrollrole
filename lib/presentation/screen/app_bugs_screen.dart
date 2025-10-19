import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/util/snackbar_util.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBugsScreen extends StatelessWidget {
  static const String path = '/bugs';
  static const String issuesUrl =
      "https://github.com/NoBrainer/scrollrole/issues";

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
    var borderColor = Theme.of(context).splashColor;

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(titleText: "Report Issues & Bugs"),
        body: Center(
          child: ListView(
            children: [
              BasicCard(
                children: [
                  BasicCardSection(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Report issues in GitHub:"),
                          const SizedBox(height: 10),
                          Tooltip(
                            message: issuesUrl,
                            child: TextButton(
                              style: ButtonStyle(
                                shape:
                                    WidgetStateProperty.all<
                                      RoundedRectangleBorder
                                    >(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                        side: BorderSide(color: borderColor),
                                      ),
                                    ),
                              ),
                              onPressed: () {
                                try {
                                  launchUrl(Uri.parse(issuesUrl));
                                } catch (e) {
                                  SnackbarUtil.showMessage(
                                    context,
                                    "Unable to open issues link in browser.",
                                  );
                                }
                              },
                              child: const Row(
                                children: [
                                  Text("Open in Browser"),
                                  SizedBox(width: 4),
                                  Icon(Icons.open_in_new),
                                ],
                              ),
                            ),
                          ),
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
