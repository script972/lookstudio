import 'package:flutter/material.dart';

import '../../domain/model/breeds.dart';
import '../../domain/model/result.dart';
import '../../domain/repository/solution_repository_interface.dart';
import '../datasource/local/facade/secure_storage_interface.dart';
import '../datasource/local/facade/solution_storage_interface.dart';
import '../datasource/network/api/breeds/breeds_api_interface.dart';
import '../entity/breeds_model.dart';

class SolutionRepository implements ISolutionRepository {
  SolutionRepository({
    required IBreedsApi api,
    required ISolutionStorage storage,
    required ISecureStorage secureStorage,
  })  : _api = api,
        _storage = storage,
        _secureStorage = secureStorage;

  final IBreedsApi _api;

  final ISolutionStorage _storage;

  final ISecureStorage _secureStorage;

  @override
  Future<Result<Breeds>> fetchBreeds() async {
    final result = await _api.getBreeds();
    return result.when(onSuccess: Result<BreedsModel>.success, onError: Result.error);
  }

  @override
  Future<int?> getTheme() => _storage.getTheme();

  @override
  Future<Result<void>> saveTheme(ThemeMode themeMode) => _storage.saveTheme(themeMode);

  @override
  Future<String?> getLocale() => _storage.getLocale();

  @override
  Future<Result<void>> saveLocale(String language) => _storage.saveLocale(language);

  @override
  Future<void> deleteToken() => _secureStorage.removeToken();
}
