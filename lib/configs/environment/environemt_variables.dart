abstract class EnvironmentVariables {
  static String environmentValue = const String.fromEnvironment('ENV', defaultValue: 'uat');
  static String mockValue = const String.fromEnvironment('MOCK', defaultValue: 'none');
}
