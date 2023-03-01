import 'package:solution_starter/data/datasource/local/app_database.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/local_errors.dart';
import 'package:solution_starter/data/datasource/network/services/authentication_service/authentication_service.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/data/model/user.dart';
import 'package:solution_starter/domain/entities/user_entity.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/domain/use_cases/maper.dart';


class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required AuthenticationService authService,
    required AppDatabase appDatabase,
  })
      : _authService = authService,
        _appDatabase = appDatabase;
  final AuthenticationService _authService;
  final AppDatabase _appDatabase;

  @override
  Future<Result<User>> login(
      {required String email, required String password}) async {
    // Request
    final response = await _authService.login(email, password);
    return response.when(
      success: Result<User>.success,
      failure: Result.error,
    );
  }

  @override
  Future<Result<User>> register(
      {required String email, required String password}) async {
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


}