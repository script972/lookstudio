import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/data/datasource/local/storage_helper.dart';
part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState>{
  SettingCubit({required this.storageHelper}) : super(const SettingState.initial());
    void saveThemeConfig(ThemeMode themeMode) async {
      emit(const SettingState.savingSettingState());
      final result =  await storageHelper.saveThemeConfiguration(themeMode);
    result.maybeWhen(
      success: (data) {
        const SettingState.successfullySavingState();
      },
      error: (data) {
        const SettingState.errorSavingState();
      },
      orElse: SettingState.errorSavingState,
    );
    }
     void saveLocaleConfig(String language) async {
       emit(const SettingState.savingSettingState());
       final result = await storageHelper.saveLocaleConfiguration(language);
        result.maybeWhen(
         success: (data) {
           const SettingState.successfullySavingState();
         },
         error: (data) {
           const SettingState.errorSavingState();
         },
         orElse: SettingState.errorSavingState,
       );
     }

  final StorageHelper storageHelper;
}