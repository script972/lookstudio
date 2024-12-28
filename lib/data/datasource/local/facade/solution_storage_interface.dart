import 'package:flutter/material.dart';

import '../../../../domain/model/result.dart';


abstract interface class ISolutionStorage {
  Future<Result<void>> saveTheme(ThemeMode themeMode);

  Future<int?> getTheme();

  Future<Result<void>> saveLocale(String language);

  Future<String?> getLocale();
}
