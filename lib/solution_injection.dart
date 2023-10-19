import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:solution_starter/configs/app_config.dart';
import 'package:solution_starter/configs/environment/environment_helper.dart';
import 'package:solution_starter/configs/environment/environment_service.dart';
import 'package:solution_starter/configs/environment/environment_variables.dart';
import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/data/datasource/local/database/app_database.dart';
import 'package:solution_starter/data/datasource/local/facade/secure_storage_interface.dart';
import 'package:solution_starter/data/datasource/local/facade/solution_storage_interface.dart';
import 'package:solution_starter/data/datasource/local/secure_storage.dart';
import 'package:solution_starter/data/datasource/network/api/breeds/breeds_api_interface.dart';
import 'package:solution_starter/data/datasource/network/api/breeds/breeds_api.dart';
import 'package:solution_starter/data/datasource/network/interceptors/token_interceptor.dart';
import 'package:solution_starter/data/datasource/network/api/authentication/authentication_api_interface.dart';
import 'package:solution_starter/data/datasource/network/api/authentication/authentication_api.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service_interface.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service.dart';
import 'package:solution_starter/data/repositories/auth_repository.dart';
import 'package:solution_starter/data/repositories/solution_repository.dart';
import 'package:solution_starter/domain/repository/auth_repository_interface.dart';
import 'package:solution_starter/domain/repository/solution_repository_interface.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:solution_starter/utils/hive_helper.dart';
import 'package:solution_starter/data/datasource/local/solution_storage.dart';

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
      Provider.value(value: AppConfig()),
      Provider.value(value: HiveHelper()),
      Provider.value(value: const FlutterSecureStorage()),
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

      ProxyProvider<FlutterSecureStorage, ISecureStorage>(
        update: (
          BuildContext context,
          FlutterSecureStorage flutterSecureStorage,
          ISecureStorage? secureStorage,
        ) =>
            SecureStorage(secureStorage: flutterSecureStorage),
      ),

      ProxyProvider2<EnvironmentService, HiveHelper, ISolutionStorage>(
        update: (
          BuildContext context,
          EnvironmentService environmentService,
          HiveHelper hiveHelper,
          ISolutionStorage? configurationStore,
        ) {
          final HiveInterface hive = Hive;
          return SolutionStorage(
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

      ProxyProvider2<EnvironmentService, ISecureStorage, INetworkService>(
        update: (
          BuildContext context,
          EnvironmentService environmentService,
          ISecureStorage authStore,
          INetworkService? networkService,
        ) {
          final interceptors = [LogInterceptor(), TokenInterceptor(authStore: authStore)];
          return NetworkService(baseUrl: environmentService.config.portalUrl, interceptors: interceptors);
        },
      ),

      //Domain services
      ProxyProvider<INetworkService, IAuthenticationApi>(
        update: (BuildContext context, INetworkService networkService, IAuthenticationApi? authService) {
          final firebaseAuth = FirebaseAuth.instance;
          return AuthenticationApi(firebaseAuth: firebaseAuth);
        },
      ),
      ProxyProvider3<IAuthenticationApi, AppDatabase, ISecureStorage, IAuthRepository>(
        update: (
          BuildContext context,
          IAuthenticationApi authService,
          AppDatabase dataBase,
          ISecureStorage secureStorage,
          IAuthRepository? facade,
        ) {
          return AuthRepository(authService: authService, appDatabase: dataBase, secureStorage: secureStorage);
        },
      ),

      ProxyProvider<INetworkService, IBreedsApi>(
        // TODO(AndriiD): we can have different base url for each repository!
        update: (BuildContext context, INetworkService networkService, IBreedsApi? breedsApi) =>
            BreedsApi(networkService),
      ),

      ProxyProvider2<IBreedsApi, ISolutionStorage, ISolutionRepository>(
        update: (BuildContext context, IBreedsApi breedsApi, ISolutionStorage storage,
                ISolutionRepository? breedsRepository) =>
            SolutionRepository(api: breedsApi, storage: storage),
      ),

      ProxyProvider<ISolutionRepository, BreedsUseCase>(
        update: (
          BuildContext context,
          ISolutionRepository breedsRepository,
          UseCase? breedsUseCase,
        ) =>
            BreedsUseCase(breedsRepository),
      ),
    ];
  }
}
