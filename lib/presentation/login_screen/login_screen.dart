import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/presentation/login_screen/login_cubit.dart';
import 'package:solution_starter/presentation/login_screen/login_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var authRepository = Provider.of<AuthRepository>(context);
    return BlocProvider(
      create: (context) => LoginCubit(
        authRepository: authRepository,
      )..init(),
      child: const LoginLayout(),
    );
  }
}
