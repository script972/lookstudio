import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/cubit.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/domain/use_cases/auth_use_case.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> with CommonErrorsHandler<LoginState> {
  LoginCubit({
    required this.authUseCase,
  }) : super(const LoginState.initial());
  final Logger logger = getLogger('ChargeListCubit');
  final AuthUseCase authUseCase;

  void login({
    required String username,
    required String password,
  }) async {
    logger.i('charge list init()');
    final response = await authUseCase.execute(LoginRequest(email: username, password: password));
    response.maybeWhen(
      success: (data) {
        emit(const LoginState.successfullyLogin());
      },
      error: (error) => handleError,
      orElse: () {},
    );
  }
}
