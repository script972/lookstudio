import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:solution_starter/data/datasource/local/DAOs/user_dao.dart';
import 'package:solution_starter/data/datasource/local/converters/date_time_converter.dart';
import 'package:solution_starter/domain/entities/user.dart';

part 'app_database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [User])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}