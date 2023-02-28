import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/data/model/user.dart';

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

  Future<void> removeUser(User user);

  Future<void> addUser(User user);

  Future<Result<List<User>>> getSavedUsers();

  Future<User?> findPersonById(User user);
}
