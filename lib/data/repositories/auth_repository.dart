import 'package:lookstudio/data/entity/user_entity.dart';
import 'package:lookstudio/domain/model/user_model.dart';

import '../../domain/model/result.dart';
import '../../domain/repository/auth_repository_interface.dart';
import '../datasource/local/database/app_database.dart';
import '../datasource/local/facade/secure_storage_interface.dart';
import '../datasource/network/api/authentication/authentication_api_interface.dart';
import '../datasource/network/exchange_models/local_errors.dart';
import '../mapper/user_mapper.dart';

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
  Future<Result<UserModel>> login({required String email, required String password}) async {
    // Request
    final response = await _authService.login(email, password);
    return response.when(onSuccess: Result<UserModel>.success, onError: Result.error);
  }

  @override
  Future<Result<UserModel>> register({required String email, required String password}) async {
    final response = await _authService.register(email, password);
    return response.when(onSuccess: Result<UserModel>.success, onError: Result.error);
  }

  @override
  Future<Result<UserModel>> googleLogin() async {
    final response = await _authService.googleLogin();
    return response.when(onSuccess: Result<UserModel>.success, onError: Result.error);
  }

  @override
  Future<Result<List<UserModel>>> getSavedUsers() async {
    late final List<UserEntity> entityUser;
    try {
      entityUser = await _appDatabase.userDao.getAllUsers();
    } catch (e) {
      return Result.error(DataBaseError(error: e, query: 'getSavedUsers'));
    }

    final List<UserModel> users = [];

    for (var user in entityUser) {
      final result = UserMapperToModel().call(user);
      users.add(result);
    }

    return Result.success(users);
  }

  @override
  Future<void> addUser(UserModel user) async {
    final castModel = UserMapperToEntity().call(user);
    await _appDatabase.userDao.insertUser(castModel);
  }

  @override
  Future<void> removeUser(UserModel user) async {
    final castModel = UserMapperToEntity().call(user);
    await _appDatabase.userDao.deleteUser(castModel);
  }

  @override
  Future<UserModel?> getInsertUser() async {
    final insertUser = await _appDatabase.userDao.getSavedUser();
    final castModel = UserMapperToModel().call(insertUser!);
    return castModel;
  }

  @override
  Future<void> saveAuthToken(String token) async => _secureStorage.saveToken(token: token);
}
