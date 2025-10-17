import 'package:flutter/material.dart';

class AppLifecycleStateObserver extends StatefulWidget {
  final Widget child;

  const AppLifecycleStateObserver({super.key, required this.child});

  @override
  State<StatefulWidget> createState() => AppLifecycleStateObserverState();
}

class AppLifecycleStateObserverState extends State<AppLifecycleStateObserver>
    with WidgetsBindingObserver {
  final List<AppLifecycleState> _appStateHistory = <AppLifecycleState>[];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (WidgetsBinding.instance.lifecycleState != null) {
      _appStateHistory.add(WidgetsBinding.instance.lifecycleState!);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    setState(() {
      _appStateHistory.add(state);
    });
  }

  @override
  Widget build(BuildContext context) {
    AppLifecycleState currentState = _appStateHistory.last;
    if (currentState != AppLifecycleState.resumed) {
      // Automatically save when the AppLifecycleState changes to an inactive state
      // context.read<ExampleBloc>().add(TriggerSave()); // TODO: trigger event to save
    }
    return widget.child;
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
}
