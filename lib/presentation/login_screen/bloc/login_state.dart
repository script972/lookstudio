part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.dataUpdated(int value) = DataUpdated;

  const factory LoginState.unknownError({
    String? message,
    required VoidCallback retryCallback,
  }) = UnknownError;

  const factory LoginState.hostUnavailableError() = HostUnavailableError;
}
