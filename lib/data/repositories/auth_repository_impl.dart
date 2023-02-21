import 'package:solution_starter/data/datasource/network/services/authentication_service/authentication_service.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/action_errors.dart';


class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required AuthenticationService authService,
  }) : _authService = authService;
  final AuthenticationService _authService;

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
}
