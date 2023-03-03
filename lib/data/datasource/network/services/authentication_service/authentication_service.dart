import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/model/user.dart';

abstract class AuthenticationService {
  Future<NetworkResponse<User>> register(
      String email,
      String password,
      );

  Future<NetworkResponse<User>> login(
      String email,
      String password,
      );

  Future<NetworkResponse<User>> googleLogin();
}