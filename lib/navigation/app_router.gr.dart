// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    BreedsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const BreedsScreen(),
      );
    },
    ClientsBaseRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterScreen(),
      );
    },
    ProfileBaseRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterScreen(),
      );
    },
    ClientsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ClientsScreen(),
      );
    },
    ClientInfoRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ClientInfoRouteArgs>(
          orElse: () =>
              ClientInfoRouteArgs(clientId: pathParams.getInt('clientId')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClientInfoScreen(
          key: args.key,
          clientId: args.clientId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'login_screen',
          fullMatch: true,
        ),
        RouteConfig(
          LoginRoute.name,
          path: 'login_screen',
        ),
        RouteConfig(
          SignUpRoute.name,
          path: 'sign_up_screen',
        ),
        RouteConfig(
          HomeRoute.name,
          path: 'home_screen',
          children: [
            RouteConfig(
              BreedsRoute.name,
              path: 'breeds_screen',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              ClientsBaseRouter.name,
              path: 'client_screen',
              parent: HomeRoute.name,
              children: [
                RouteConfig(
                  ClientsRoute.name,
                  path: '',
                  parent: ClientsBaseRouter.name,
                ),
                RouteConfig(
                  ClientInfoRoute.name,
                  path: ':clientId',
                  parent: ClientsBaseRouter.name,
                ),
              ],
            ),
            RouteConfig(
              ProfileBaseRouter.name,
              path: 'profile_screen',
              parent: HomeRoute.name,
              children: [
                RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileBaseRouter.name,
                ),
                RouteConfig(
                  SettingsRoute.name,
                  path: 'setting_screen',
                  parent: ProfileBaseRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login_screen',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: 'sign_up_screen',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: 'home_screen',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [BreedsScreen]
class BreedsRoute extends PageRouteInfo<void> {
  const BreedsRoute()
      : super(
          BreedsRoute.name,
          path: 'breeds_screen',
        );

  static const String name = 'BreedsRoute';
}

/// generated route for
/// [EmptyRouterScreen]
class ClientsBaseRouter extends PageRouteInfo<void> {
  const ClientsBaseRouter({List<PageRouteInfo>? children})
      : super(
          ClientsBaseRouter.name,
          path: 'client_screen',
          initialChildren: children,
        );

  static const String name = 'ClientsBaseRouter';
}

/// generated route for
/// [EmptyRouterScreen]
class ProfileBaseRouter extends PageRouteInfo<void> {
  const ProfileBaseRouter({List<PageRouteInfo>? children})
      : super(
          ProfileBaseRouter.name,
          path: 'profile_screen',
          initialChildren: children,
        );

  static const String name = 'ProfileBaseRouter';
}

/// generated route for
/// [ClientsScreen]
class ClientsRoute extends PageRouteInfo<void> {
  const ClientsRoute()
      : super(
          ClientsRoute.name,
          path: '',
        );

  static const String name = 'ClientsRoute';
}

/// generated route for
/// [ClientInfoScreen]
class ClientInfoRoute extends PageRouteInfo<ClientInfoRouteArgs> {
  ClientInfoRoute({
    Key? key,
    required int clientId,
  }) : super(
          ClientInfoRoute.name,
          path: ':clientId',
          args: ClientInfoRouteArgs(
            key: key,
            clientId: clientId,
          ),
          rawPathParams: {'clientId': clientId},
        );

  static const String name = 'ClientInfoRoute';
}

class ClientInfoRouteArgs {
  const ClientInfoRouteArgs({
    this.key,
    required this.clientId,
  });

  final Key? key;

  final int clientId;

  @override
  String toString() {
    return 'ClientInfoRouteArgs{key: $key, clientId: $clientId}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'setting_screen',
        );

  static const String name = 'SettingsRoute';
}
