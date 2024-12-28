import 'package:flutter/material.dart';

import '../model/breeds.dart';
import '../model/result.dart';

abstract interface class ISolutionRepository {
  Future<Result<Breeds>> fetchBreeds();

  Future<Result<void>> saveTheme(ThemeMode themeMode);

  Future<int?> getTheme();

  Future<Result<void>> saveLocale(String language);

  Future<String?> getLocale();

  Future<void> deleteToken();
}
