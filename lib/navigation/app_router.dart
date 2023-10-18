import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/data/datasource/local/facade/secure_storage_interface.dart';
import 'package:solution_starter/navigation/auth_guard.dart';
import 'package:solution_starter/presentation/breeds_screen/breeds_screen.dart';
import 'package:solution_starter/presentation/clients_screen/client_info_screen.dart';
import 'package:solution_starter/presentation/clients_screen/clients_screen.dart';
import 'package:solution_starter/presentation/home_screen/home_screen.dart';
import 'package:solution_starter/presentation/login_screen/login_screen.dart';
import 'package:solution_starter/presentation/profile_screen/profile_screen.dart';
import 'package:solution_starter/presentation/sign_up_screen/sign_up_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter({required storage}) : _storage = storage;

  final ISecureStorage _storage;

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: LoginRoute.page, path: LoginScreen.path),
        AutoRoute(page: SignUpRoute.page, path: SignUpScreen.path),
        AutoRoute(
          page: HomeRoute.page,
          path: HomeScreen.path,
          initial: true,
          guards: [AuthGuard(storage: _storage)],
          children: [
            AutoRoute(
              page: BreedsRoute.page,
              path: BreedsScreen.path,
            ),
            AutoRoute(
              path: ClientsScreen.path,
              page: ClientsRoute.page,
            ),
            AutoRoute(path: ProfileScreen.path, page: ProfileRoute.page),
          ],
        ),
        AutoRoute(
          path: '/client_info',
          page: ClientInfoRoute.page,
        ),
      ];
}
