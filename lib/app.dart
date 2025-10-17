import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/business_logic_layer.dart';
import 'package:scrollrole/presentation/presentation_layer.dart';

class App extends StatelessWidget {
  static late String version;
  static late String buildNumber;

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const BusinessLogicLayer(child: PresentationLayer());
  }
}
