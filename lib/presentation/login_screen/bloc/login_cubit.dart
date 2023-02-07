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
  final Logger logger = getLogger('ChargeListCubit');
  final AuthRepository repository;

  void login({
    required String username,
    required String password,
  }) async {
    logger.i('charge list init()');
    final response = await repository.login(email: username, password: password);
    response.maybeWhen(
      success: (data) {
        emit(const LoginState.successfullyLogin());
      },
      error: (error) => handleError,
      orElse: () {},
    );
  }
}
