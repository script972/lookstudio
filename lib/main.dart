import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/app_entry.dart';
import 'package:solution_starter/core/firebase_options.dart';
import 'package:solution_starter/core/logger.dart';

void main(List<String> args) async {
  await configureApp();
  FlutterNativeSplash.remove();
  runApp(AppEntry());
}

Future configureApp() async {
  final Logger logger = getLogger('main');

  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();

  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } catch (exception, stackTrace) {
    logger.e('New uncatched exception: $exception, st: $stackTrace');
  }
}
