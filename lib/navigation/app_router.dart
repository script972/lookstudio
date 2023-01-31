import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/presentation/home_screen/home_screen.dart';
import 'package:solution_starter/presentation/login_screen/login_screen.dart';

part 'package:solution_starter/navigation/routes.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: autoRoutes,
)
class AppRouter extends _$AppRouter {}

