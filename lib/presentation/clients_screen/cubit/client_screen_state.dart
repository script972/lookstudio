part of 'client_cubit.dart';

@freezed
class ClientScreenState with _$ClientScreenState {
  const factory ClientScreenState.initial() = ClinetInitialState;

  const factory ClientScreenState.loading() = ClientLoadingState;

  const factory ClientScreenState.loaded(List<User> users) = ClientLoadedState;

  const factory ClientScreenState.error({final Object? exception}) = ClientErrorState;
}
