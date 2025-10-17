import 'package:flutter/material.dart';

class DialogUtil {
  static void showAlert(
    BuildContext context,
    String title,
    String description,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext builderContext) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
        );
      },
    );
  }

  static void showErrorAlert(BuildContext context, String description) {
    showAlert(context, "Error", description);
  }

  static void showFeatureNotImplementedAlert(
    BuildContext context,
    String description,
  ) {
    showAlert(context, "Feature Not Implemented", description);
  }

  static void showLoadingSpinner(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) {
          return const Dialog(
            backgroundColor: Colors.transparent,
            child: Center(child: CircularProgressIndicator()),
          );
        });
  }

  static void hideLoadingSpinner(BuildContext context) {
    Navigator.of(context).pop();
  }
}
