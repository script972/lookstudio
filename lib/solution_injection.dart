import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:solution_starter/configs/environment/environment_service.dart';
import 'package:solution_starter/configs/environment/environment_variables.dart';
import 'package:solution_starter/configs/environment/environment_helper.dart';
import 'package:solution_starter/configs/app_config.dart';
import 'package:solution_starter/core/theme/solution_theme.dart';
import 'package:solution_starter/core/theme/vendor_theme.dart';
import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/data/datasource/local/facade/auth_store.dart';
import 'package:solution_starter/data/datasource/local/hive_auth_store.dart';
import 'package:solution_starter/data/datasource/network/api/breeds_api.dart';
import 'package:solution_starter/data/datasource/network/network_service.dart';
import 'package:solution_starter/data/repositories/breeds_repository.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/repositories/auth_repository_impl.dart';
import 'package:solution_starter/data/datasource/network/api/auth_api.dart';
import 'package:solution_starter/domain/repository/breeds_repository.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:solution_starter/network/network_service.dart' as old;
import 'package:solution_starter/network/token_interceptor.dart';
import 'package:solution_starter/utils/hive_helper.dart';

class SolutionInjection {
  static List<SingleChildWidget> getDiList(BuildContext context) {
    final SolutionInjection injection = SolutionInjection();
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
        update: (
          BuildContext context,
          AppConfig appConfig,
          EnvironmentHelper envHelper,
          EnvironmentService? greetingService,
        ) =>
            EnvironmentService(
          environment: envHelper.currentEnvironment(),
          appConfig: appConfig,
        ),
      ),

      ProxyProvider2<EnvironmentService, HiveHelper, AuthStore>(
        update: (
          BuildContext context,
          EnvironmentService environmentService,
          HiveHelper hiveHelper,
          AuthStore? greetingService,
        ) {
          final HiveInterface hive = Hive;
          return HiveAuthStore(
            hive: hive,
            boxPrefix: environmentService.config.hiveBoxPrefix,
            hiveHelper: hiveHelper,
          );
        },
      ),

      //process
      ProxyProvider2<EnvironmentService, AuthStore, Dio>(
        update: (BuildContext context, EnvironmentService environmentService, AuthStore authStore, Dio? dio) {
          final Dio dio = Dio();
          final Interceptor tokenInterceptor = TokenInterceptor(authStore: authStore);
          dio.options.baseUrl = environmentService.config.gatewayUrl;
          dio.options.headers['Content-Type'] = 'application/json';
          dio.interceptors.add(tokenInterceptor);
          dio.interceptors.add(LogInterceptor());

          return dio;
        },
      ),

      ProxyProvider<Dio, old.NetworkService>(
        update: (BuildContext context, Dio dio, old.NetworkService? networkService) => old.NetworkService(
          dio: dio,
        ),
      ),
      ProxyProvider<AppConfig, EnvironmentHelper>(
        update: (BuildContext context, AppConfig appConfig, EnvironmentHelper? greetingService) => EnvironmentHelper(
          appConfig: appConfig,
          environmentValue: EnvironmentVariables.environmentValue,
          mockValue: EnvironmentVariables.mockValue,
        ),
      ),

      //Domain services
      ProxyProvider<old.NetworkService, AuthService>(
        update: (BuildContext context, old.NetworkService networkService, AuthService? authService) {
          return AuthServiceImpl(networkService: networkService);
        },
      ),
      ProxyProvider<AuthService, AuthRepository>(
        update: (BuildContext context, AuthService authService, AuthRepository? facade) {
          return AuthRepositoryImpl(authService: authService);
        },
      ),

      ProxyProvider2<EnvironmentService, AuthStore, NetworkService>(
        update: (BuildContext context, EnvironmentService environmentService, AuthStore authStore,
            NetworkService? networkService) {
          const int defaultTimeout = 5000;
          final dio = Dio(
            BaseOptions(
              baseUrl: environmentService.config.portalUrl,
              connectTimeout: defaultTimeout,
              receiveTimeout: defaultTimeout,
              sendTimeout: defaultTimeout,
            ),
          );
          dio.interceptors.addAll([
            RetryInterceptor(dio: dio, retryDelays: [for (int i = 1; i <= 3; i++) Duration(milliseconds: 500 * i)]),
            LogInterceptor(),
            TokenInterceptor(authStore: authStore)
          ]);

          return NetworkServiceImpl(dio: dio);
        },
      ),

      ProxyProvider<NetworkService, BreedsApi>(
        update: (BuildContext context, NetworkService networkService, BreedsApi? breedsApi) =>
            BreedsApiImpl(networkService),
      ),

      ProxyProvider<BreedsApi, BreedsRepository>(
        update: (BuildContext context, BreedsApi breedsApi, BreedsRepository? breedsRepository) =>
            BreedsRepositoryImpl(breedsApi),
      ),

      ProxyProvider<BreedsRepository, BreedsUseCase>(
        update: (BuildContext context, BreedsRepository breedsRepository, UseCase? breedsUseCase) =>
            BreedsUseCase(breedsRepository),
      ),
    ];
  }
}
