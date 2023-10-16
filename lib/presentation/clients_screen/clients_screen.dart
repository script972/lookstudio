import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';
import 'package:solution_starter/presentation/clients_screen/clients_layout.dart';
import 'package:solution_starter/presentation/clients_screen/cubit/client_cubit.dart';

@RoutePage()
class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  static const path = 'client_screen';
  static const route = 'ClientsBaseRouter';

  @override
  Widget build(BuildContext context) {
    final repository = Provider.of<AuthRepository>(context);
    return BlocProvider(
      create: (context) => ClientCubit(repository: repository),
      child: const ClientsLayout(),
    );
  }
}


