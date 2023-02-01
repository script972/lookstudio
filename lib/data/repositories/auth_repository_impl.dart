import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/data/model/login_response.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/datasource/network/api/auth_api.dart';

class AuthRepositoryImpl extends AuthRepository {

  AuthRepositoryImpl({
    required AuthApi authService,
  }) : _authService = authService;
  final AuthApi _authService;

  @override
  Future<Result<LoginResponse>> login({required String email, required String password}) async {
    // Request
    final response = await _authService.login(loginRequest: LoginRequest(email: email, password: password));
    return response.when(
      success: Result<LoginResponse>.success,
      failure:  Result.error,
    );
  }
}
