import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/use_cases/sign_up_use_case.dart';
import 'package:solution_starter/presentation/sign_up_screen/cubit/sign_up_cubit.dart';
import 'package:solution_starter/presentation/sign_up_screen/sign_up_layout.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const path = 'sign_up_screen';

  @override
  Widget build(BuildContext context) {
    final useCase = Provider.of<SignUpUseCase>(context);
    return BlocProvider(
      create: (context) => SignUpCubit(
        useCase,
      ),
      child: const SignUpLayout(),
    );
  }
}
