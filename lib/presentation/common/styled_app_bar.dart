import 'package:flutter/material.dart';

/// Common AppBar for consistent styling and sizing
class StyledAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double defaultHeight = kToolbarHeight;
  static const Size defaultSize = Size.fromHeight(defaultHeight);

  @override
  final Size preferredSize;

  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final String titleText;

  const StyledAppBar({
    super.key,
    this.actions,
    this.automaticallyImplyLeading = true,
    this.leading,
    this.preferredSize = defaultSize,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      leading: leading,
      title: Text(titleText),
      toolbarHeight: defaultHeight,
    );
  }
}
