part of 'package:solution_starter/navigation/app_router.dart';

final autoRoutes = <AutoRoute>[
  AutoRoute(page: LoginRoute.page, path: LoginScreen.path),
  AutoRoute(page: SignUpRoute.page, path: SignUpScreen.path),
  AutoRoute(
    page: HomeRoute.page,
    path: HomeScreen.path,
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
