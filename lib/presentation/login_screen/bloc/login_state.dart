part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.successfullyLogin() = SuccessfullyLogin;

  const factory LoginState.unknownError({
    String? message,
    required VoidCallback retryCallback,
  }) = UnknownError;

  const factory LoginState.fieldIsEmptyError({
    @Default(false) bool isUsernameEmpty,
    @Default(false) bool isPasswordEmpty,
  }) = FieldIsEmptyError;
  const factory LoginState.wrongCredentialsError() = WrongCredentials;
  const factory LoginState.emailNotVerified({required String username, required String password}) = EmailNotVerified;
}
