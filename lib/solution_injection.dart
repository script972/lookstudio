import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
import 'package:solution_starter/data/datasource/network/services/network_service.dart';
import 'package:solution_starter/data/repositories/breeds_repository.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/repositories/auth_repository_impl.dart';
import 'package:solution_starter/data/datasource/network/api/auth_api.dart';
import 'package:solution_starter/domain/repository/breeds_repository.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:solution_starter/data/datasource/network/interceptors/token_interceptor.dart';
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

      ProxyProvider<AppConfig, EnvironmentHelper>(
        update: (BuildContext context, AppConfig appConfig, EnvironmentHelper? greetingService) => EnvironmentHelper(
          appConfig: appConfig,
          environmentValue: EnvironmentVariables.environmentValue,
          mockValue: EnvironmentVariables.mockValue,
        ),
      ),

      ProxyProvider2<EnvironmentService, AuthStore, NetworkService>(
        update: (
          BuildContext context,
          EnvironmentService environmentService,
          AuthStore authStore,
          NetworkService? networkService,
        ) {
          final interceptors = [LogInterceptor(), TokenInterceptor(authStore: authStore)];
          return NetworkServiceImpl(baseUrl: environmentService.config.portalUrl, interceptors: interceptors);
        },
      ),

      //Domain services
      ProxyProvider<NetworkService, AuthApi>(
        // TODO(AndriiD): why we not inject base url here?
        update: (BuildContext context, NetworkService networkService, AuthApi? authService) {
          final firebaseAuth = FirebaseAuth.instance;
          return AuthApiImpl(firebaseAuth: firebaseAuth);
        },
      ),
      ProxyProvider<AuthApi, AuthRepository>(
        update: (BuildContext context, AuthApi authService, AuthRepository? facade) {
          return AuthRepositoryImpl(authService: authService);
        },
      ),

      ProxyProvider<NetworkService, BreedsApi>(
        // TODO(AndriiD): we can have different base url for each repository!
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
