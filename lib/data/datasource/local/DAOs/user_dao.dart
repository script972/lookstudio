import 'package:floor/floor.dart';
import 'package:solution_starter/domain/entities/user_entity.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM UserEntity')
  Future<List<UserEntity>> getAllUsers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertUser(UserEntity user);

  @Query('SELECT * FROM UserEntity WHERE id = :id')
  Future<UserEntity?> findPersonById(int id);

  @delete
  Future<void> deleteUser(UserEntity user);
}