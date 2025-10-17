import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  final String? text;

  const LoadingOverlay({this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                if (text != null && text!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(text!),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
