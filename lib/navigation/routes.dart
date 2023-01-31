part of 'package:solution_starter/navigation/app_router.dart';

const autoRoutes = <AutoRoute>[
  AutoRoute(page: LoginScreen, path: HomeScreen.path, initial: true),
  AutoRoute(page: HomeScreen, path: LoginScreen.path),
];
