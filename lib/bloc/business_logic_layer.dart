import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollrole/bloc/app_lifecycle_state_observer.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';

class BusinessLogicLayer extends StatelessWidget {
  final Widget child;

  const BusinessLogicLayer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<ConfigBloc>(create: (context) => ConfigBloc())],
      child: AppLifecycleStateObserver(child: child),
    );
  }
}
