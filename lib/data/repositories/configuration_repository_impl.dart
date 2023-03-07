import 'package:flutter/material.dart';
import 'package:solution_starter/data/datasource/local/facade/configuration_storage.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/repository/configuration_repository.dart';

class ConfigurationRepositoryImpl extends ConfigurationRepository {
  ConfigurationRepositoryImpl(this.storageService);

  final ConfigurationStorage storageService;

  @override
  Future<int?> getTheme() => storageService.getTheme();

  @override
  Future<Result<void>> saveTheme(ThemeMode themeMode) => storageService.saveTheme(themeMode);

  @override
  Future<String?> getLocale() => storageService.getLocale();

  @override
  Future<Result<void>> saveLocale(String language) => storageService.saveLocale(language);
}
