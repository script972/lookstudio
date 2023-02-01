import 'package:solution_starter/data/model/login_response.dart';
import 'package:solution_starter/domain/entities/result.dart';

abstract class AuthRepository {
  Future<Result<LoginResponse>> login({required String email, required String password});
}
