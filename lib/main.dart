import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/app_entry.dart';
import 'package:solution_starter/core/firebase_options.dart';
import 'package:solution_starter/core/logger.dart';

void main(List<String> args) async {
  final Logger logger = getLogger('main');

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  logger.i('ensureInitialized');

  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    logger.e('>>>>>>>>>1e$e');
  }

  runApp(AppEntry());
}
