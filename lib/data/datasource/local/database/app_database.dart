import 'package:floor/floor.dart';
import 'package:solution_starter/data/datasource/local/database/DAOs/user_dao.dart';
import 'package:solution_starter/data/datasource/local/database/converters/date_time_converter.dart';
import 'package:solution_starter/data/model/user_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

part 'app_database.g.dart';

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [UserEntity])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}
