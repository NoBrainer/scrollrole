import 'package:flutter/material.dart';
import 'package:scrollrole/presentation/common/loading_spinner.dart';

class DialogUtil {
  static void showAlert(
    BuildContext context, {
    Widget? title,
    String? titleText,
    Widget? content,
    String? contentText,
  }) {
    if (content == null && contentText == null) {
      title = null;
      titleText = "DialogUtil Error";
      content = null;
      contentText = "DialogUtil.showAlert requires 'content' or 'contentText'";
    } else if (content != null && contentText != null) {
      title = null;
      titleText = "DialogUtil Error";
      content = null;
      contentText =
          "DialogUtil.showAlert requires 'content' or 'contentText', but not both";
    } else if (title == null && titleText == null) {
      title = null;
      titleText = "DialogUtil Error";
      content = null;
      contentText = "DialogUtil.showAlert requires 'title' or 'titleText'";
    } else if (title != null && titleText != null) {
      title = null;
      titleText = "DialogUtil Error";
      content = null;
      contentText =
          "DialogUtil.showAlert requires 'title' or 'titleText', but not both";
    }

    showDialog(
      context: context,
      builder: (BuildContext builderContext) {
        return AlertDialog(
          title: title ?? Text(titleText!),
          content: content ?? Text(contentText!),
        );
      },
    );
  }

  static void showErrorAlert(BuildContext context, String description) {
    showAlert(context, titleText: "Error", contentText: description);
  }

  static void showFeatureNotImplementedAlert(
    BuildContext context,
    String description,
  ) {
    showAlert(
      context,
      titleText: "Feature Not Implemented",
      contentText: description,
    );
  }

  static void showLoadingSpinner(BuildContext context, {String? text}) {
    showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: LoadingSpinner(text: text),
        );
      },
    );
  }

  static void hideLoadingSpinner(BuildContext context) {
    Navigator.of(context).pop();
  }
}
