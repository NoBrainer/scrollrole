import 'package:flutter/material.dart';
import 'package:scrollrole/bloc/app_lifecycle_state_observer.dart';

class BusinessLogicLayer extends StatelessWidget {
  final Widget child;

  const BusinessLogicLayer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AppLifecycleStateObserver(child: child);
    // return MultiBlocProvider(
    //   providers: [
    //     // TODO: Add providers for blocs
    //     // BlocProvider<ExampleBloc>(create: (context) => ExampleBloc()),
    //   ],
    //   child: AppLifecycleStateObserver(child: child),
    // );
  }
}
