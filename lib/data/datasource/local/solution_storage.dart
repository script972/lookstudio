import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/model/result.dart';
import '../../../utils/hive_helper.dart';
import '../network/exchange_models/action_errors.dart';
import 'facade/solution_storage_interface.dart';

class SolutionStorage implements ISolutionStorage {
  SolutionStorage({
    required HiveInterface hive,
    required String boxPrefix,
    required HiveHelper hiveHelper,
  })  : _hive = hive,
        _hiveHelper = hiveHelper,
        _boxName = boxPrefix + _configurationBoxKey;

  static const _configurationBoxKey = 'configurationBox';
  static const _themeValueKey = 'themeValue';
  static const _localeValueKey = 'localeValue';

  final HiveInterface _hive;
  final String _boxName;
  final HiveHelper _hiveHelper;

  @override
  Future<Result<void>> saveTheme(ThemeMode themeMode) async {
    final data = themeMode.index;

    try {
      final result = _hiveHelper.saveValue(hive: _hive, boxName: _boxName, key: _themeValueKey, value: data);

      return Result.success(result);
    } catch (error) {
      return Result.error(SavingError(error, boxName: _boxName, boxKey: _themeValueKey));
    }
  }

  @override
  Future<int?> getTheme() async => await _hiveHelper.getValue<int?>(
        hive: _hive,
        boxName: _boxName,
        key: _themeValueKey,
      );

  @override
  Future<Result<void>> saveLocale(String language) async {
    try {
      final result = _hiveHelper.saveValue(hive: _hive, boxName: _boxName, key: _localeValueKey, value: language);

      return Result.success(result);
    } catch (error) {
      return Result.error(SavingError(error, boxName: _boxName, boxKey: _localeValueKey));
    }
  }

  @override
  Future<String?> getLocale() async => await _hiveHelper.getValue<String?>(
        hive: _hive,
        boxName: _boxName,
        key: _localeValueKey,
      );
}
