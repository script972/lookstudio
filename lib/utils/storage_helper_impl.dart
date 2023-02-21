
import 'package:flutter/material.dart';
import 'package:solution_starter/data/datasource/network/services/storage_service/storage_service.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/utils/storage_helper.dart';

class StorageHelperImpl extends StorageHelper{
  StorageHelperImpl(this.storageService);

  final StorageService storageService;


  @override
  Future<int?> getThemeConfiguration() {
   return storageService.getThemeConfiguration();
  }

  @override
  Future<Result<void>> saveThemeConfiguration(ThemeMode themeMode) {
   return storageService.saveThemeConfiguration(themeMode);
  }

  @override
  Future<String?> getLocaleConfiguration() {
    return storageService.getLocaleConfiguration();
  }

  @override
  Future<Result<void>> saveLocaleConfiguration(String language) {
    return storageService.saveLocaleConfiguration(language);
  }
}