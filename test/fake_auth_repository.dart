import 'package:lookstudio/data/datasource/network/exchange_models/action_errors.dart';
import 'package:lookstudio/data/mapper/auth_error_mapper.dart';
import 'package:lookstudio/domain/model/result.dart';
import 'package:lookstudio/domain/model/user_model.dart';
import 'package:lookstudio/domain/repository/auth_repository_interface.dart';

class FakeAuthRepository implements IAuthRepository {
  Result<UserModel> response = Result.success(
      UserModel(id: 'uid', token: 'tok', loginDate: DateTime(2024)));
  int calls = 0;
  String? savedToken;
  final List<UserModel> addedUsers = [];

  Future<Result<UserModel>> _respond() async {
    calls++;
    await Future<void>.delayed(Duration.zero);
    return response;
  }

  void failWith(String code) =>
      response = Result.error(mapAuthError(UnauthorizedError(error: 'e', code: code)));

  @override
  Future<Result<UserModel>> login(
          {required String email, required String password}) =>
      _respond();

  @override
  Future<Result<UserModel>> register(
          {required String email, required String password}) =>
      _respond();

  @override
  Future<Result<UserModel>> googleLogin() => _respond();

  @override
  Future<void> saveAuthToken(String token) async => savedToken = token;

  @override
  Future<void> addUser(UserModel user) async => addedUsers.add(user);

  @override
  Future<void> removeUser(UserModel user) async {}

  @override
  Future<Result<List<UserModel>>> getSavedUsers() async => Result.success([]);

  @override
  Future<UserModel?> getInsertUser() async => null;
}
