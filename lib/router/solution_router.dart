import 'package:auto_route/auto_route.dart';
import 'package:solution_starter/presentation/login_screen/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // Router active while user is authorized
    AutoRoute(
      path: 'login',
      name: 'loginPage',
      initial: true,
      page: LoginScreen,
      children: [
        /* AutoRoute(
              path: 'settings',
              name: 'SettingsPage',
              page: SettingScreen,
            ),*/
        // RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    /*AutoRoute(
      path: 'location_details',
      name: 'LocationDetailsPage',
      page: LocationDetailsScreen,
    ),*/
  ],
)
class $SolutionRouter {}
