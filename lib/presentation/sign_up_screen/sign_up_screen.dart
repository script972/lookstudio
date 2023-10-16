import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/presentation/sign_up_screen/cubit/sign_up_cubit.dart';
import 'package:solution_starter/presentation/sign_up_screen/sign_up_layout.dart';
@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const path = '/sign_up_screen';

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<AuthRepository>(context);
    return BlocProvider(
      create: (context) => SignUpCubit(repository),
      child: const SignUpLayout(),
    );
  }
}
