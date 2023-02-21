import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/action_errors.dart';
import 'package:solution_starter/data/datasource/network/services/storage_service/storage_service.dart';
import 'package:solution_starter/domain/entities/result.dart';

class StorageServiceHiveImpl extends StorageService{

  static const _themeBoxKey = 'themeBox';
  static const _themeValueKey = 'themeValue';

  static const _localeBoxKey = 'localeBox';
  static const _localeValueKey = 'localeValue';

  @override
  Future<Result<void>> saveThemeConfiguration(ThemeMode themeMode) async {
    final data = themeMode.index;

    try{
      final box = await Hive.openBox(_themeBoxKey);
      final result = await box.put(_themeValueKey, data);
      return Result.success(result);
    }
    catch(error){
      return Result.error(SavingError(error, boxName: _themeBoxKey, boxKey: _themeValueKey));
    }
  }

  @override
  Future<int?> getThemeConfiguration() async {
    final box = await Hive.openBox(_themeBoxKey);
    final themeValue = box.get(_themeValueKey);
    return themeValue;
  }

  @override
  Future<Result<void>> saveLocaleConfiguration(String language) async {
    try{
      final box = await Hive.openBox(_localeBoxKey);
      final result = await box.put(_localeValueKey, language);
      return Result.success(result);
    }
    catch(error) {
      return Result.error(SavingError(error, boxName: _localeBoxKey, boxKey: _localeValueKey));
    }
  }

  @override
  Future<String?> getLocaleConfiguration() async {
    final box = await Hive.openBox(_localeBoxKey);
    final localeValue = box.get(_localeValueKey);
    return localeValue;
  }
}