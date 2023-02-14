import 'package:floor/floor.dart';
import 'package:solution_starter/domain/entities/user.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM User')
  Future<List<User>> getAllUsers();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertUser(User model);

  @delete
  Future<void> deleteUser(User model);
}