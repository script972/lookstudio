import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Result<User>> register({
    required String email,
    required String password,
  });

  Future<Result<User>> login({
    required String email,
    required String password,
  });

  Future<Result<User>> googleLogin();

  Future<void> removeUser(User model);

  Future<void> insertUser(User model);

  Future<Result<List<User>>> getSavedUsers();
}
