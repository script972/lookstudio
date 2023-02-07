import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/presentation/home_screen/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const path = 'home_screen';

  @override
  Widget build(BuildContext context) {
    var authRepository = Provider.of<AuthRepository>(context);
    return HomeLayout(); /*BlocProvider(
      create: (context) => LoginCubit(
        authRepository: authRepository,
      )..init(),
      child: const ,
    )*/
  }
}
