part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.successfullyLogin() = SuccessfullyLogin;

  const factory LoginState.validationError({
    EmailError? emailError,
    PasswordError? passwordError,
  }) = ValidationError;

  const factory LoginState.authError(AuthFailureType type) = AuthError;
}
