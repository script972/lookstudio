part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = InitialSettingState;

  const factory SettingState.logoutState() = LogoutSettingState;

  const factory SettingState.successfullySavingState() = LoadedSettingState;

  const factory SettingState.errorSavingState({final Object? exception}) = ErrorSettingState;
}