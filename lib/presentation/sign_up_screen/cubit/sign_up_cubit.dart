import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:lookstudio/domain/model/result.dart';
import 'package:lookstudio/domain/model/user_model.dart';

import '../../../core/logger.dart';
import '../../../domain/model/auth_failure.dart';
import '../../../domain/model/auth_validators.dart';
import '../../../domain/repository/auth_repository_interface.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._repository) : super(const SignUpState.initial());

  final IAuthRepository _repository;
  final Logger _logger = getLogger('SignUpCubit');

  bool get _isLoading => state is SignUpLoading;

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    if (_isLoading) return;
    final trimmedEmail = email.trim();
    final emailError = validateEmail(trimmedEmail);
    final passwordError = validatePassword(password);
    if (emailError != null || passwordError != null) {
      emit(SignUpState.validationError(emailError: emailError, passwordError: passwordError));
      return;
    }
    emit(const SignUpState.loading());
    await _handle(await _repository.register(email: trimmedEmail, password: password));
  }

  Future<void> googleLogin() async {
    if (_isLoading) return;
    emit(const SignUpState.loading());
    await _handle(await _repository.googleLogin());
  }

  Future<void> _handle(Result<UserModel> response) async {
    if (isClosed) return;
    switch (response) {
      case Success(:final data):
        try {
          await _repository.saveAuthToken(data.token ?? data.id);
        } catch (e) {
          _logger.w('Failed to save auth token: $e');
          if (!isClosed) emit(const SignUpState.authError(AuthFailureType.unknown));
          return;
        }
        try {
          await _repository.addUser(data);
        } catch (e) {
          _logger.w('Failed to persist user: $e');
        }
        if (isClosed) return;
        emit(const SignUpState.signUpped());
      case Error(:final error):
        _logger.w('Sign up failed: $error');
        final type = error is AuthFailureType ? error : AuthFailureType.unknown;
        // Dismissing the Google dialog is not a failure.
        emit(type == AuthFailureType.cancelled
            ? const SignUpState.initial()
            : SignUpState.authError(type));
    }
  }
}
