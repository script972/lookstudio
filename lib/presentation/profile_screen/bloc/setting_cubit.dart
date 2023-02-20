import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/domain/repository/storage_helper.dart';
part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState>{
  SettingCubit({required this.storageHelper}) : super(const SettingState.initial());
    void saveThemeConfig(ThemeMode themeMode) async {
      emit(const SettingState.savingSettingState());
      await storageHelper.saveThemeConfiguration(themeMode);
    }
     void saveLocaleConfig(String language) async {
       await storageHelper.saveLocaleConfiguration(language);
     }

  final StorageHelper storageHelper;
}