import 'package:solution_starter/core/app_config.dart';

///Provides environment specific values
class EnvironmentService {
  late final EnvironmentValues _config;
  final AppConfig _appConfig;

  EnvironmentValues get config => _config;

  EnvironmentService({
    required EnvironmentType environment,
    required AppConfig appConfig,
  }) : _appConfig = appConfig {
    if (!_appConfig.environmentsData.containsKey(environment)) {
      throw Exception('No config defined for provided environment - ${environment.name}');
    }

    _config = _appConfig.environmentsData[environment]!;
  }
}
