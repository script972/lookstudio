import 'package:solution_starter/data/datasource/local/app_database.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/local_errors.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/datasource/network/api/auth_api.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required AuthApi authService,
    required AppDatabase appDatabase,
  })  : _authService = authService,
        _appDatabase = appDatabase;
  final AuthApi _authService;
  final AppDatabase _appDatabase;

  @override
  Future<Result<User>> login({required String email, required String password}) async {
    // Request
    final response = await _authService.login(email, password);
    return response.when(
      success: Result<User>.success,
      failure: Result.error,
    );
  }

  @override
  Future<Result<User>> register({required String email, required String password}) async {
    final response = await _authService.register(email, password);
    return response.when(
      success: Result<User>.success,
      failure: Result.error,
    );
  }

  @override
  Future<Result<User>> googleLogin() async {
    final response = await _authService.googleLogin();
    return response.when(
      success: Result<User>.success,
      failure: Result.error,
    );
  }

  @override
  Future<Result<List<User>>> getSavedUsers() async {
    late final List<User> users;
    try {
      users = await _appDatabase.userDao.getAllUsers();
    } catch (e) {
      return Result.error(DataBaseError(error: e, query: 'getSavedUsers'));
    }
    return Result.success(users);
  }

  @override
  Future<void> insertUser(User model) async => _appDatabase.userDao.insertUser(model);

  @override
  Future<void> removeUser(User model) async => _appDatabase.userDao.deleteUser(model);
}
