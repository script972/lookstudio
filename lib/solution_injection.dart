import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:solution_starter/configs/environment/environemt_service.dart';
import 'package:solution_starter/configs/environment/environemt_variables.dart';
import 'package:solution_starter/configs/environment/environment_helper.dart';
import 'package:solution_starter/configs/app_config.dart';
import 'package:solution_starter/core/theme/solution_theme.dart';
import 'package:solution_starter/core/theme/vendor_theme.dart';
import 'package:solution_starter/data/datasource/local/facade/auth_store.dart';
import 'package:solution_starter/data/datasource/local/hive_auth_store.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/domain/repository/auth_repository_impl.dart';
import 'package:solution_starter/domain/service/auth_service.dart';
import 'package:solution_starter/domain/service/auth_service_impl.dart';
import 'package:solution_starter/network/network_service.dart';
import 'package:solution_starter/network/token_interceptor.dart';
import 'package:solution_starter/utils/hive_helper.dart';

class SolutionInjection {
  static List<SingleChildWidget> getDiList(BuildContext context) {
    SolutionInjection injection = SolutionInjection();
    return injection.diFactory(context);
  }

  List<SingleChildWidget> diFactory(BuildContext context) {
    return [
      ..._buildIndependentServices(),
      ..._dependentServices(context),
    ];
  }

  //Feel free to expand this
  List<SingleChildWidget> _buildIndependentServices() {
    return [
      Provider.value(
        value: AppConfig(),
      ),
      Provider.value(
        value: HiveHelper(),
      ),
      Provider.value(
        value: ThemeContainer(
          VendorTheme(),
          VendorTheme(),
        ),
      ),
    ];
  }

  List<SingleChildWidget> _dependentServices(BuildContext context) {
    return [
      ProxyProvider<AppConfig, EnvironmentHelper>(
        update: (BuildContext context, AppConfig appConfig, EnvironmentHelper? greetingService) => EnvironmentHelper(
          appConfig: appConfig,
          environmentValue: EnvironmentVariables.environmentValue,
          mockValue: EnvironmentVariables.mockValue,
        ),
      ),

      ProxyProvider2<AppConfig, EnvironmentHelper, EnvironmentService>(
        update: (BuildContext context, AppConfig appConfig, EnvironmentHelper envHelper,
                EnvironmentService? greetingService) =>
            EnvironmentService(
          environment: envHelper.currentEnvironment(),
          appConfig: appConfig,
        ),
      ),

      ProxyProvider2<EnvironmentService, HiveHelper, AuthStore>(update: (BuildContext context,
          EnvironmentService environmentService, HiveHelper hiveHelper, AuthStore? greetingService) {
        final HiveInterface hive = Hive;
        return HiveAuthStore(
          hive: hive,
          boxPrefix: environmentService.config.hiveBoxPrefix,
          hiveHelper: hiveHelper,
        );
      }),

      //process
      ProxyProvider2<EnvironmentService, AuthStore, Dio>(
        update: (BuildContext context, EnvironmentService environmentService, AuthStore authStore, Dio? dio) {
          final Dio dio = Dio();
          final Interceptor tokenInterceptor = TokenInterceptor(authStore: authStore);

          /*  // Config for Proxyman. Applied only if not prod and local IP provided
          if (!kReleaseMode && EnvironmentVariables.localIp.isNotEmpty) {
            ProxymanConfig().config(dio: dio, ip: EnvironmentVariables.localIp);
          }*/

          dio.options.baseUrl = environmentService.config.gatewayUrl;
          dio.options.headers['Content-Type'] = 'application/json';
          dio.interceptors.add(tokenInterceptor);
          dio.interceptors.add(LogInterceptor());

          return dio;
        },
      ),

      ProxyProvider<Dio, NetworkService>(
          update: (BuildContext context, Dio dio, NetworkService? networkService) => NetworkService(
                dio: dio,
              )),
      ProxyProvider<AppConfig, EnvironmentHelper>(
        update: (BuildContext context, AppConfig appConfig, EnvironmentHelper? greetingService) => EnvironmentHelper(
          appConfig: appConfig,
          environmentValue: EnvironmentVariables.environmentValue,
          mockValue: EnvironmentVariables.mockValue,
        ),
      ),

      //Domain services
      ProxyProvider<NetworkService, AuthService>(
          update: (BuildContext context, NetworkService networkService, AuthService? authService) {
        return AuthServiceImpl(networkService: networkService);
      }),
      ProxyProvider<AuthService, AuthRepository>(
          update: (BuildContext context, AuthService authService, AuthRepository? facade) {
        return AuthRepositoryImpl(authService: authService);
      }),
    ];
  }
}
