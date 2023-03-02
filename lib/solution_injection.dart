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
import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/data/datasource/local/app_database.dart';
import 'package:solution_starter/data/datasource/local/facade/auth_store.dart';
import 'package:solution_starter/data/datasource/local/hive_auth_store.dart';
import 'package:solution_starter/data/datasource/network/api/breeds_api.dart';
import 'package:solution_starter/data/datasource/network/api/breeds_api_impl.dart';
import 'package:solution_starter/data/datasource/network/services/authentication_service/authentication_service.dart';
import 'package:solution_starter/data/datasource/network/services/authentication_service/authentication_service_firebase_impl.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service_impl.dart';
import 'package:solution_starter/data/repositories/breeds_repository.dart';
import 'package:solution_starter/data/datasource/local/storage_helper_impl.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/data/repositories/auth_repository_impl.dart';
import 'package:solution_starter/domain/repository/breeds_repository.dart';
import 'package:solution_starter/data/datasource/local/storage_helper.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:solution_starter/data/datasource/network/interceptors/token_interceptor.dart';
import 'package:solution_starter/utils/hive_helper.dart';
import 'data/datasource/network/services/storage_service/storage_service_hive_impl.dart';

class SolutionInjection {
  static List<SingleChildWidget> getDiList(BuildContext context, AppDatabase database) {
    final SolutionInjection injection = SolutionInjection();
    return injection.diFactory(context, database);
  }

  List<SingleChildWidget> diFactory(BuildContext context, AppDatabase database) {
    return [
      ..._buildIndependentServices(database),
      ..._dependentServices(context),
    ];
  }

  //Feel free to expand this
  List<SingleChildWidget> _buildIndependentServices(AppDatabase database) {
    return [
      Provider.value(
        value: AppConfig(),
      ),
      Provider.value(
        value: HiveHelper(),
      ),
      Provider.value(value: StorageServiceHiveImpl()),
      Provider.value(value: database),
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
      ProxyProvider<NetworkService, AuthenticationService>(
        // TODO(AndriiD): why we not inject base url here?
        update: (BuildContext context, NetworkService networkService, AuthenticationService? authService) {
          final firebaseAuth = FirebaseAuth.instance;
          return AuthServiceFirebaseImplementation(firebaseAuth: firebaseAuth);
        },
      ),
      ProxyProvider2<AuthenticationService, AppDatabase, AuthRepository>(
        update: (BuildContext context, AuthenticationService authService, AppDatabase dataBase, AuthRepository? facade) {
          return AuthRepositoryImpl(authService: authService, appDatabase: dataBase);
        },
      ),

    ProxyProvider<StorageServiceHiveImpl, StorageHelper>(
    update: (BuildContext context, StorageServiceHiveImpl storageService, StorageHelper? storageRepo) {
    return StorageHelperImpl(storageService);
    },
    ),
    ProxyProvider<AuthenticationService, AuthRepository>(
    update: (BuildContext context, AuthenticationService authService, AuthRepository? facade) {
    return AuthRepositoryImpl(authService: authService);
    },

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
