import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:scrollrole/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Prevent the screen from rotating
  //TODO: Load this from local storage or something similar
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Setup file access
  var appDocumentsDirectory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(appDocumentsDirectory.path),
  );

  await PackageInfo.fromPlatform().then((info) {
    App.version = info.version;
    App.buildNumber = info.buildNumber;
  });

  runApp(const App());
}
