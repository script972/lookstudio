import 'package:solution_starter/data/model/login_response.dart';
import 'package:solution_starter/network/api_response.dart';

abstract class AuthRepository {
  Future<ApiResponse<LoginResponse>> login({required String email, required String password});
}
