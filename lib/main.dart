import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/environment/environemt_variables.dart';
import 'package:solution_starter/core/firebase_options.dart';
import 'package:solution_starter/core/logger.dart';

Future<void> main() async {
  final Logger logger = getLogger('main');

  logger.i('in main');

  logger.i('EnvironmentVariables.useFlutterDriver: ${EnvironmentVariables.useFlutterDriver}');
  if (EnvironmentVariables.useFlutterDriver) {
    logger.i('enable fluter driver extension');

    // enableFlutterDriverExtension();
  }
  logger.i('ensureInitialized');
  WidgetsFlutterBinding.ensureInitialized();

  logger.i('initialize firebase');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseRemoteConfig.instance.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 5),
    minimumFetchInterval: const Duration(hours: 1),
  ));
  await FirebaseRemoteConfig.instance.setDefaults(const {'min_supported_version': '0.0.0'});
  await FirebaseRemoteConfig.instance.fetchAndActivate();

  // Make system status and navigation bars transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  // Init DI
  logger.i('init DI');
  initDependencies();

  // Init DB
  logger.i('init Hive');
  await Hive.initFlutter();

  // Init biometrics
  logger.i('init biometrics');
  // await GetIt.I.get<BiometricService>().init();

  // Init authentication status
  logger.i('init SessionCubit');
  // await GetIt.I.get<SessionCubit>().init();

  logger.i('run app');
  runApp(MyApp());
}
