import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/use_cases/auth_use_case.dart';
import 'package:solution_starter/presentation/login_screen/bloc/login_cubit.dart';
import 'package:solution_starter/presentation/login_screen/login_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = 'login_screen';

  @override
  Widget build(BuildContext context) {
    final useCase = Provider.of<AuthUseCase>(context);
    return BlocProvider(
      create: (context) => LoginCubit(
        authUseCase: useCase,
      ),
      child: const LoginLayout(),
    );
  }
}
