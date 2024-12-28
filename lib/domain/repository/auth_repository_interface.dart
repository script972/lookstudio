
import '../model/result.dart';
import '../model/user_model.dart';

abstract interface class IAuthRepository {
  Future<Result<UserModel>> register({required String email, required String password});

  Future<Result<UserModel>> login({required String email, required String password});

  Future<Result<UserModel>> googleLogin();

  Future<void> removeUser(UserModel user);

  Future<void> addUser(UserModel user);

  Future<Result<List<UserModel>>> getSavedUsers();

  Future<UserModel?> getInsertUser();

  Future<void> saveAuthToken(String token);
}
