import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final bool borderBottom;
  final bool borderLeft;
  final bool borderRight;
  final bool borderTop;
  final Widget child;

  const BorderContainer({
    super.key,
    this.borderBottom = false,
    this.borderLeft = false,
    this.borderRight = false,
    this.borderTop = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = Theme.of(context).colorScheme.onPrimaryContainer;
    final side = BorderSide(color: borderColor);

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: borderBottom ? side : BorderSide.none,
          left: borderLeft ? side : BorderSide.none,
          right: borderRight ? side : BorderSide.none,
          top: borderTop ? side : BorderSide.none,
        ),
      ),
      child: child,
    );
  }
}
