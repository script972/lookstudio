import 'package:flutter/material.dart';
import 'package:solution_starter/domain/entities/result.dart';

abstract class ConfigurationStorage{
  Future<Result<void>> saveTheme(ThemeMode themeMode);

  Future<int?> getTheme();

  Future<Result<void>> saveLocale(String language);

  Future<String?> getLocale();
}

