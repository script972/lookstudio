import 'package:solution_starter/data/datasource/local/database/app_database.dart';
import 'package:solution_starter/data/datasource/local/facade/secure_storage_interface.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/local_errors.dart';
import 'package:solution_starter/data/datasource/network/api/authentication/authentication_api_interface.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/data/model/user_entity.dart';
import 'package:solution_starter/domain/repository/auth_repository_interface.dart';
import 'package:solution_starter/data/mapper/mapper_from_model.dart';
import 'package:solution_starter/data/mapper/mapper_to_model.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({
    required IAuthenticationApi authService,
    required AppDatabase appDatabase,
    required ISecureStorage secureStorage,
  })  : _authService = authService,
        _appDatabase = appDatabase,
        _secureStorage = secureStorage;
  final IAuthenticationApi _authService;
  final AppDatabase _appDatabase;
  final ISecureStorage _secureStorage;

  @override
  Future<Result<User>> login({required String email, required String password}) async {
    // Request
    final response = await _authService.login(email, password);
    return response.when(onSuccess: Result<User>.success, onError: Result.error);
  }

  @override
  Future<Result<User>> register({required String email, required String password}) async {
    final response = await _authService.register(email, password);
    return response.when(onSuccess: Result<User>.success, onError: Result.error);
  }

  @override
  Future<Result<User>> googleLogin() async {
    final response = await _authService.googleLogin();
    return response.when(onSuccess: Result<User>.success, onError: Result.error);
  }

  @override
  Future<Result<List<User>>> getSavedUsers() async {
    late final List<UserEntity> entityUser;
    try {
      entityUser = await _appDatabase.userDao.getAllUsers();
    } catch (e) {
      return Result.error(DataBaseError(error: e, query: 'getSavedUsers'));
    }

    final List<User> users = [];

    for (var user in entityUser) {
      final result = ToModel().call(user);
      users.add(result);
    }

    return Result.success(users);
  }

  @override
  Future<void> addUser(User user) async {
    final castModel = ToUserEntity().call(user);
    await _appDatabase.userDao.insertUser(castModel);
  }

  @override
  Future<void> removeUser(User user) async {
    final castModel = ToUserEntity().call(user);
    await _appDatabase.userDao.deleteUser(castModel);
  }

  @override
  Future<User?> getInsertUser() async {
    final insertUser = await _appDatabase.userDao.getSavedUser();
    final castModel = ToModel().call(insertUser!);
    return castModel;
  }

  @override
  Future<void> saveAuthToken(String token) async => _secureStorage.saveToken(token: token);
}
