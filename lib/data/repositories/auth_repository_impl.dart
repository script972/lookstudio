import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/data/model/login_response.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/datasource/network/api/auth_api.dart';
import 'package:solution_starter/network/api_response.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthService _authService;

  AuthRepositoryImpl({
    required AuthService authService,
  }) : _authService = authService;

  @override
  Future<ApiResponse<LoginResponse>> login({required String email, required String password}) async {
    // Request
    final response = await _authService.login(loginRequest: LoginRequest(email: email, password: password));
    return response.maybeWhen(
      ok: (data) => ApiResponse<LoginResponse>.ok(data),
      noAuth: (_) => const ApiResponse.noAuth(),
      hostUnavailable: () => const ApiResponse.hostUnavailable(),
      orElse: () => const ApiResponse.unknownError(),
    );
  }
}
