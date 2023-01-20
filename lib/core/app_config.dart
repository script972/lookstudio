// ignore_for_file: constant_identifier_names

enum MockType { none, assets, hard }

enum EnvironmentType { PROD, DEV, UAT }

class AppConfig {
  /// Used in case environment identifier wasn't provided or incorrect
  EnvironmentType defaultEnvironment = EnvironmentType.DEV;

  /// Set of environment data sets.
  Map<EnvironmentType, EnvironmentValues> get environmentsData => {
        EnvironmentType.DEV: const EnvironmentValues(
          gatewayUrl: 'https://taas-backend.stg.wattev.net/',
          portalUrl: 'https://user.dev.elevateaccounts.com/',
          hiveBoxPrefix: 'dev_',
          cognitoAppClientId: '29ec9i0fdshennalrfnfmlfpajln',
          cognitoPoolId: 'us-east-2_6S0ddsdsds6vMxFx',
          cognitoRegion: 'us-east-2',
        ),
        EnvironmentType.PROD: const EnvironmentValues(
          gatewayUrl: 'https://gateway.prod.elevateaccounts.com/',
          portalUrl: 'https://user.elevateaccounts.com/',
          hiveBoxPrefix: 'prod_',
          cognitoAppClientId: '6i5866j4h159hsreag7r3v3um7',
          cognitoPoolId: 'us-east-2_xeUItOAuR',
          cognitoRegion: 'us-east-2',
        ),
        EnvironmentType.UAT: const EnvironmentValues(
          gatewayUrl: 'https://gateway.uat.elevateaccounts.com/',
          portalUrl: 'https://user.uat.elevateaccounts.com/',
          hiveBoxPrefix: 'uat_',
          cognitoAppClientId: '3jtth0gp1fi5klig24pgnk4sfm',
          cognitoPoolId: 'us-east-2_SGdxeWDvY',
          cognitoRegion: 'us-east-2',
        ),
      };
}

// Object that enlists environment specific variables
class EnvironmentValues {
  final String gatewayUrl;
  final String portalUrl;
  final String hiveBoxPrefix;
  final String cognitoPoolId;
  final String cognitoAppClientId;
  final String cognitoRegion;

  const EnvironmentValues({
    required this.portalUrl,
    required this.cognitoPoolId,
    required this.cognitoAppClientId,
    required this.cognitoRegion,
    required this.gatewayUrl,
    required this.hiveBoxPrefix,
  });
}
