import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';

class SignUpUseCase implements UseCase<Result<User>, LoginRequest> {
  SignUpUseCase(this.repository);

  final AuthRepository repository;

  @override
  Future<Result<User>> execute(LoginRequest loginRequest) async =>
      await repository.register(email: loginRequest.email, password: loginRequest.password);
}
