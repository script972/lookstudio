import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/presentation/breeds_screen/breeds_screen.dart';
import 'package:solution_starter/presentation/clients_screen/client_info_screen.dart';
import 'package:solution_starter/presentation/clients_screen/clients_screen.dart';
import 'package:solution_starter/presentation/home_screen/home_screen.dart';
import 'package:solution_starter/presentation/login_screen/login_screen.dart';
import 'package:solution_starter/presentation/profile_screen/profile_screen.dart';
import 'package:solution_starter/presentation/profile_screen/settings/setting_screen.dart';
import 'package:solution_starter/presentation/sign_up_screen/sign_up_screen.dart';

part 'app_router.gr.dart';
part 'package:solution_starter/navigation/routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: autoRoutes,
)
class AppRouter extends _$AppRouter {}
