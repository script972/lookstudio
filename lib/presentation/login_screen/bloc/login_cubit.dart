import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:lookstudio/domain/model/result.dart';

import '../../../core/logger.dart';
import '../../../domain/model/auth_failure.dart';
import '../../../domain/model/auth_validators.dart';
import '../../../domain/repository/auth_repository_interface.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.repository,
  }) : super(const LoginState.initial());
  final Logger logger = getLogger('LoginCubit');
  final IAuthRepository repository;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    if (state is Loading) return;
    final trimmedEmail = email.trim();
    final emailError = validateEmail(trimmedEmail);
    final passwordError = validateLoginPassword(password);
    if (emailError != null || passwordError != null) {
      emit(LoginState.validationError(emailError: emailError, passwordError: passwordError));
      return;
    }

    emit(const LoginState.loading());
    final response = await repository.login(email: trimmedEmail, password: password);
    if (isClosed) return;
    switch (response) {
      case Success(:final data):
        try {
          await repository.saveAuthToken(data.token ?? data.id);
        } catch (e) {
          logger.w('Failed to save auth token: $e');
          if (!isClosed) emit(const LoginState.authError(AuthFailureType.unknown));
          return;
        }
        try {
          await repository.addUser(data);
        } catch (e) {
          // Failing to persist the user must not block the login.
          logger.w('Failed to persist user: $e');
        }
        if (isClosed) return;
        emit(const LoginState.successfullyLogin());
      case Error(:final error):
        logger.w('Login failed: $error');
        emit(LoginState.authError(error is AuthFailureType ? error : AuthFailureType.unknown));
    }
  }
}
