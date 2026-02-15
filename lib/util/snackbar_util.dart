import 'package:flutter/material.dart';
import 'package:scrollrole/util/log_util.dart';

class SnackbarUtil {
  static void showMessage(
    BuildContext context,
    String message, {
    bool clearSnackbars = true,
  }) {
    if (canShow(context)) {
      // Enforce the text color matching the closeIconColor
      var textColor = Theme.of(context).snackBarTheme.closeIconColor;
      var textStyle = TextStyle(color: textColor);

      final messenger = ScaffoldMessenger.of(context);
      if (clearSnackbars) {
        messenger.clearSnackBars();
      }
      messenger.showSnackBar(
        SnackBar(content: Text(message, style: textStyle)),
      );
    } else {
      LogUtil.print('No ScaffoldMessenger in context, ignoring');
    }
  }

  static bool canShow(BuildContext context) {
    return ScaffoldMessenger.maybeOf(context) != null && context.mounted;
  }
}
