import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../domain/repository/auth_repository_interface.dart';
import 'bloc/login_cubit.dart';
import 'login_layout.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const path = '/login_screen';

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<IAuthRepository>(context);
    return BlocProvider(
      create: (context) => LoginCubit(repository: repository),
      child: const LoginLayout(),
    );
  }
}
