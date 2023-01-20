// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../presentation/login_screen/login_screen.dart' as _i1;

class SolutionRouter extends _i2.RootStackRouter {
  SolutionRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'login',
          fullMatch: true,
        ),
        _i2.RouteConfig(
          LoginPage.name,
          path: 'login',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginPage extends _i2.PageRouteInfo<void> {
  const LoginPage()
      : super(
          LoginPage.name,
          path: 'login',
        );

  static const String name = 'LoginPage';
}
