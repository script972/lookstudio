import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/data/model/login_response.dart';
import 'package:solution_starter/network/network_response.dart';

abstract class AuthService {
  Future<NetworkResponse<LoginResponse>> login({required LoginRequest loginRequest});
}
