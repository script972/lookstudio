import 'package:auto_route/auto_route.dart';

import '../data/datasource/local/facade/secure_storage_interface.dart';
import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.storage});

  final ISecureStorage storage;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final result = await storage.getToken();
    if (result != null) {
      resolver.next(true);
    } else {
      resolver.next(false);
      await router.replaceAll([const LoginRoute()]);
    }
  }
}
