import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollrole/bloc/app_lifecycle_state_observer.dart';
import 'package:scrollrole/bloc/config/config_bloc.dart';
import 'package:scrollrole/data/repository/config_repository.dart';

class BusinessLogicLayer extends StatelessWidget {
  final Widget child;

  const BusinessLogicLayer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ConfigRepository>(
          create: (context) => ConfigRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ConfigBloc>(
            create: (context) =>
                ConfigBloc(RepositoryProvider.of<ConfigRepository>(context)),
          ),
        ],
        child: AppLifecycleStateObserver(child: child),
      ),
    );
  }
}
