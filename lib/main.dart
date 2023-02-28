import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/app_entry.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/data/datasource/local/app_database.dart';


void main(List<String> args) async {
  await configureApp();
  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  final table = await database.database.rawQuery('SELECT * FROM UserEntity');
  runApp(AppEntry(database: database, authenticated: [database.userDao.getAllUsers()].isNotEmpty && table.isNotEmpty));
}

Future configureApp() async {
  final Logger logger = getLogger('main');

  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCQgQ05lskIbesvWeN5TXrkz_Qovtrhedw",
        appId: "1:371148984128:web:204b89270e3d3d8013b4a5",
        messagingSenderId: "371148984128",
        projectId: "solution-starter-35b1b",
      ),
    );
  } catch (exception, stackTrace) {
    logger.e('New uncatched exception: $exception, st: $stackTrace');
  }
}
