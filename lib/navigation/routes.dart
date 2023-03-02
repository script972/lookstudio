part of 'package:solution_starter/navigation/app_router.dart';

const autoRoutes = <AutoRoute>[
  AutoRoute(page: LoginScreen, path: LoginScreen.path),
  AutoRoute(page: SignUpScreen, path: SignUpScreen.path),
  AutoRoute(
    page: HomeScreen,
    path: HomeScreen.path,
    children: [
      AutoRoute(
        page: BreedsScreen,
        path: BreedsScreen.path,
      ),
      AutoRoute(
        path: ClientsScreen.path,
        page: EmptyRouterScreen,
        name: ClientsScreen.route,
        children: [
          AutoRoute(
            path: '',
            page: ClientsScreen,
          ),
          AutoRoute(
            path: ':clientId',
            page: ClientInfoScreen,
          ),
        ],
      ),
      AutoRoute(
        path: ProfileScreen.path,
        name: ProfileScreen.route,
        page: EmptyRouterScreen,
        children: [
          AutoRoute(path: '', page: ProfileScreen, initial: true),
          AutoRoute(path: SettingsScreen.path, page: SettingsScreen),
        ],
      )
    ],
  )
];
