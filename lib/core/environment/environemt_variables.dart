abstract class EnvironmentVariables {
  static String environmentValue = const String.fromEnvironment('ENV', defaultValue: 'uat');
  static String mockValue = const String.fromEnvironment('MOCK', defaultValue: 'none');
  static String initialPath = const String.fromEnvironment('INIT_PATH');
  static String labelValue = const String.fromEnvironment('LABEL', defaultValue: 'elevate');
  static String localIp = const String.fromEnvironment('LOCAL_IP');
  static bool useFlutterDriver = const bool.fromEnvironment('USE_FLUTTER_DRIVER');
}
