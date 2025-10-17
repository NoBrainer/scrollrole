import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/app.dart';
import 'package:scrollrole/presentation/common/basic_card.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/util/dialog_util.dart';
import 'package:scrollrole/util/log_util.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class AppSettingsScreen extends StatelessWidget {
  static const String path = '/settings';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const AppSettingsScreen();
      },
    );
  }

  const AppSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: const StyledAppBar(titleText: "App Settings"),
        body: Center(
          child: ListView(
            children: [_BackupRestoreCard(), _OrientationCard(), _VersionRow()],
          ),
        ),
      ),
    );
  }
}

class _BackupRestoreCard extends StatelessWidget {
  void cleanup() {
    FilePicker.platform.clearTemporaryFiles().then((removed) {
      LogUtil.log("FilePicker.clearTemporaryFiles() Removed=$removed");
    });
  }

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return BasicCard(
      children: [
        const BasicCardTitle(text: "Manual Back-up and Restore"),
        const BasicCardSection(
          children: [
            Text(
              "Save your app state to a file. With that file, you can restore "
              "your app to that state.",
            ),
            SizedBox(height: 10),
            Text(
              "WARNING: Restoring or resetting app state will replace your "
              "current app state. This is irreversible.",
            ),
          ],
        ),
        Tooltip(
          message: "Save Backup to File",
          child: ListTile(
            leading: const Icon(Icons.file_download_outlined),
            title: const Text("Save Backup to File"),
            onTap: () async {
              // TODO: Figure out if any of the permissions need to be updated
              // <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
              // <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
              // <uses-permission android:name="android.permission.MANAGE_EXTERNAL_STORAGE"/>

              DialogUtil.showLoadingSpinner(context);

              // TODO: get the state from bloc
              // ExampleState state = context.read<ExampleBloc>().state;
              // String fileName = "scrollrole-${DateUtil.currentDate()}.txt";

              // String? savedFilePath = await FilePicker.platform.saveFile(
              //   fileName: fileName,
              //   bytes: utf8.encode(state.toYaml()),
              // );

              if (context.mounted) {
                DialogUtil.hideLoadingSpinner(context);
                // TODO: show message on success
                // if (savedFilePath != null) {
                //   SnackbarUtil.showMessage(
                //     context,
                //     "Saved app state to $fileName",
                //   );
                // }
                SnackbarUtil.showMessage(
                  context,
                  "Nothing done. Feature under construction.",
                );
              }
              cleanup();
            },
          ),
        ),
        Tooltip(
          message: "Restore Backup from File",
          child: ListTile(
            leading: const Icon(Icons.file_upload_outlined),
            title: const Text("Restore Backup from File"),
            onTap: () {
              DialogUtil.showLoadingSpinner(context);

              FilePicker.platform
                  .pickFiles()
                  .then((result) {
                    if (result == null) return;

                    File file = File(result.files.single.path!);
                    file.readAsString().then((String content) {
                      if (context.mounted) {
                        // TODO: trigger load state from file
                        // context.read<ExampleBloc>().add(ImportFile(content));
                        SnackbarUtil.showMessage(
                          context,
                          "Loaded app state from ${file.path}",
                        );
                      }
                    });
                  })
                  .whenComplete(() {
                    if (context.mounted) {
                      DialogUtil.hideLoadingSpinner(context);
                    }
                    cleanup();
                  });
            },
          ),
        ),
        //TODO: Add button for validating backup file
        Tooltip(
          message: "Reset App State",
          child: ListTile(
            leading: const Icon(Icons.delete_forever_outlined),
            title: const Text("Reset App State"),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    title: Text("WARNING!", style: titleStyle),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Are you sure you want to reset your app state? This "
                          "is irreversible!",
                        ),
                        SizedBox(height: 10),
                        Text(
                          "You should backup your app state before proceeding.",
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(dialogContext).pop();
                        },
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(dialogContext).pop();
                          // TODO: trigger state reset
                          // dialogContext.read<ExampleBloc>().add(ForceReset());
                          SnackbarUtil.showMessage(
                            dialogContext,
                            "Reset app state",
                          );
                        },
                        child: Text("Reset"),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _OrientationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: Save this state in local storage or something similar
    final Orientation orientation = MediaQuery.of(context).orientation;
    final text = orientation == Orientation.portrait
        ? "Switch to landscape"
        : "Switch to portrait";
    final nextOrientations = orientation == Orientation.portrait
        ? [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]
        : [DeviceOrientation.portraitUp];

    return BasicCard(
      children: [
        const BasicCardTitle(text: "App Orientation"),
        const BasicCardSection(
          children: [
            Text(
              "You can toggle the orientation between landscape and portrait.",
            ),
          ],
        ),
        Tooltip(
          message: text,
          child: ListTile(
            leading: Icon(Icons.rotate_right_outlined),
            title: Text(text),
            onTap: () async {
              SystemChrome.setPreferredOrientations(nextOrientations);
            },
          ),
        ),
      ],
    );
  }
}

class _VersionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: SelectableText("Version ${App.version}+${App.buildNumber}"),
      ),
    );
  }
}
