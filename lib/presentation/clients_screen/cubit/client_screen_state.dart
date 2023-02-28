part of 'client_cubit.dart';

@freezed
class ClientScreenState with _$ClientScreenState {
  const factory ClientScreenState.initial() = Initial;

  const factory ClientScreenState.deleting() = Deleting;

  const factory ClientScreenState.deleted() = SuccessfullyDeleted;

  const factory ClientScreenState.error({final Object? exception}) = ErrorState;
}
