import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/navigation/app_router.dart';

class HomeWrapperScreen extends StatefulWidget {
  const HomeWrapperScreen({super.key});

  @override
  HomeWrapperScreenState createState() => HomeWrapperScreenState();
}

class HomeWrapperScreenState extends State<HomeWrapperScreen> {
  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<AuthRepository>(context);
    return FutureBuilder(
      future: repository.getSavedUsers(),
      builder: (context, snapshot) {
        return AutoRouter.declarative(
          routes: (context) => [
            const HomeRoute(),
            if (!snapshot.hasData && snapshot.connectionState != ConnectionState.waiting) const LoginRoute(),
          ],
        );
      },
    );
  }
}
