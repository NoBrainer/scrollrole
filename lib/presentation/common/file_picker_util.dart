import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/util/dialog_util.dart';
import 'package:scrollrole/util/snackbar_util.dart';

class FilePickerUtil {
  static void openFile(
    BuildContext context,
    Function onOpen,
    Function onComplete,
  ) {
    DialogUtil.showLoadingSpinner(context);

    FilePicker.platform
        .pickFiles()
        .then((result) {
          if (result == null) return;

          File file = File(result.files.single.path!);
          file.readAsString().then((String content) {
            if (context.mounted) {
              onOpen(context, file, content);
            }
          });
        })
        .whenComplete(() {
          if (context.mounted) {
            DialogUtil.hideLoadingSpinner(context);
          }
          onComplete();
        });
  }

  static void loadConfig(BuildContext context, Function onComplete) {
    openFile(context, onLoadConfig, onComplete);
  }

  static void onLoadConfig(BuildContext context, File file, String content) {
    context.read<ConfigBloc>().add(ImportFile(content));
    SnackbarUtil.showMessage(context, "Loaded game state from ${file.path}");
  }
}
