import 'package:flutter/material.dart';

class RulesParagraphs extends StatelessWidget {
  final List<String> paragraphs;

  const RulesParagraphs({super.key, required this.paragraphs});

  @override
  Widget build(BuildContext context) {
    List<Widget> paragraphWidgets = [];
    for (var paragraph in paragraphs) {
      if (paragraphWidgets.isNotEmpty) {
        // Add space between each paragraph
        paragraphWidgets.add(SizedBox(height: 8));
      }
      paragraphWidgets.add(Text(paragraph));
    }
    return Column(children: paragraphWidgets);
  }
}
