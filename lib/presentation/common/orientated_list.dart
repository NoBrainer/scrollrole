import 'package:flutter/material.dart';

class OrientatedList extends StatelessWidget {
  final List<Widget> children;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const OrientatedList({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.max,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final direction = orientation == Orientation.portrait
        ? Axis.vertical
        : Axis.horizontal;

    return Flex(
      crossAxisAlignment: crossAxisAlignment,
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: children,
    );
  }
}
