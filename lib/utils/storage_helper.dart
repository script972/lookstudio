import 'package:flutter/material.dart';
import 'package:solution_starter/domain/entities/result.dart';

abstract class StorageHelper{
  Future<Result<void>> saveThemeConfiguration(ThemeMode themeMode);

  Future<int?> getThemeConfiguration();

  Future<void> saveLocaleConfiguration(String language);

  Future<String?> getLocaleConfiguration();
}