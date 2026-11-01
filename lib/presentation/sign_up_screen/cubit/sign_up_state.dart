part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;

  const factory SignUpState.loading() = SignUpLoading;

  const factory SignUpState.signUpped() = SignUpSuccess;

  const factory SignUpState.validationError({
    EmailError? emailError,
    PasswordError? passwordError,
  }) = SignUpValidationError;

  const factory SignUpState.authError(AuthFailureType type) = SignUpAuthError;
}
