import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/cubit.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> with CommonErrorsHandler<LoginState> {
  LoginCubit({
    required this.repository,
  }) : super(const LoginState.initial());
  final Logger logger = getLogger('LoginCubit');
  final AuthRepository repository;

  void login({
    required String username,
    required String password,
  }) async {
    logger.i('Login state');
    if (username.isEmpty || password.isEmpty) {
      emit(LoginState.fieldIsEmptyError(isUsernameEmpty: username.isEmpty, isPasswordEmpty: password.isEmpty));
    }
    final response = await repository.login(email: username, password: password);
    response.maybeWhen(
      success: (data) {
        repository.addUser(data);
        emit(const LoginState.successfullyLogin());
      },
      error: (error) {
        //TODO(DenisM): Process error states
        emit(const LoginState.wrongCredentialsError());
      },
      orElse: () {
        emit(const LoginState.wrongCredentialsError());
      },
    );
  }
}
