import 'package:floor/floor.dart';
import 'package:solution_starter/data/model/user_entity.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM UserEntity')
  Future<List<UserEntity>> getAllUsers();

  @Query('SELECT * FROM UserEntity')
  Future<UserEntity?> getSavedUser();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertUser(UserEntity user);

  @delete
  Future<void> deleteUser(UserEntity user);
}
