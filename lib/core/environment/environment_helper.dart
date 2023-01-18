import 'package:solution_starter/core/app_config.dart';

class EnvironmentHelper {
  final AppConfig _appConfig;
  final String _environmentValue;
  final String _mockValue;

  EnvironmentHelper({
    required AppConfig appConfig,
    required String environmentValue,
    required String mockValue,
  })  : _appConfig = appConfig,
        _environmentValue = environmentValue,
        _mockValue = mockValue;

  MockType currentMock() {
    final mock = _mockValue.toLowerCase();
    switch (mock) {
      case 'assets':
        return MockType.assets;
      case 'hard':
        return MockType.hard;
      default:
        return MockType.none;
    }
  }

  ///Map string environment identifier given as environment variable to appropriate enum value
  EnvironmentType currentEnvironment() {
    final env = _environmentValue.toLowerCase();
    switch (env) {
      case 'prod':
        return EnvironmentType.PROD;
      case 'dev':
        return EnvironmentType.DEV;
      case 'uat':
        return EnvironmentType.UAT;
      default:
        return _appConfig.defaultEnvironment;
    }
  }
}
