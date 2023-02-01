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
    required this.authRepository,
  }) : super(const LoginState.loading());
  final Logger logger = getLogger('ChargeListCubit');
  final AuthRepository authRepository;

  void init() async {
    logger.i('charge list init()');
    final response = await authRepository.login(email: 'ds@a.sa', password: 'password');
    response.maybeWhen(
      success: (data) {
        logger.i('process success data');
      },
      error: (error) => handleError,
      orElse: () {},
    );
    emit(const LoginState.dataUpdated(1));
  }
}
