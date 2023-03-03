part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = _InitialState;

  const factory SettingState.savingSettingState() = _savingSettingState;

  const factory SettingState.successfullySavingState() = _LoadedState;

  const factory SettingState.errorSavingState({final Object? exception}) = _ErrorState;
}