import 'package:hive/hive.dart';
import 'package:solution_starter/data/datasource/local/facade/auth_store.dart';
import 'package:solution_starter/utils/hive_helper.dart';

class HiveAuthStore implements AuthStore {
  // Static fields
  static const String tokenKey = 'token_key';
  static const String refreshTokenKey = 'refresh_token_key';
  static const String boxId = 'auth_box';

  // Constructor
  HiveAuthStore({
    required HiveInterface hive,
    required String boxPrefix,
    required HiveHelper hiveHelper,
  })  : _hive = hive,
        _hiveHelper = hiveHelper,
        _boxName = boxPrefix + boxId;

  // Dependencies
  final HiveInterface _hive;
  final String _boxName;
  final HiveHelper _hiveHelper;

  //
  // Access token
  //
  @override
  Future<String?> getToken() async => await _hiveHelper.getValue(
        hive: _hive,
        boxName: _boxName,
        key: tokenKey,
      );

  @override
  Future<void> saveToken({required String token}) async => await _hiveHelper.saveValue(
        hive: _hive,
        boxName: _boxName,
        key: tokenKey,
        value: token,
      );

  @override
  Future<void> removeToken() async => _hiveHelper.deleteValue(
        hive: _hive,
        boxName: _boxName,
        key: tokenKey,
      );

  //
  // Refresh token
  //
  @override
  Future<String?> getRefreshToken() async => await _hiveHelper.getValue(
        hive: _hive,
        boxName: _boxName,
        key: refreshTokenKey,
      );

  @override
  Future<void> removeRefreshToken() async => await _hiveHelper.deleteValue(
        hive: _hive,
        boxName: _boxName,
        key: refreshTokenKey,
      );

  @override
  Future<void> saveRefreshToken({required String token}) async => await _hiveHelper.saveValue(
        hive: _hive,
        boxName: _boxName,
        key: refreshTokenKey,
        value: token,
      );
}
