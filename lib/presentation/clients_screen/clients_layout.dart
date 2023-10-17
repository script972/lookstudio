import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/presentation/clients_screen/cubit/client_cubit.dart';
import 'package:solution_starter/widgets/molecules/client_avatar.dart';
import 'package:solution_starter/widgets/templates/client.dart';

class ClientsLayout extends StatelessWidget {
  const ClientsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final clients = Client.clients;
    return BlocConsumer<ClientCubit, ClientScreenState>(
      listener: (context, state) {
        if(state is ErrorState) {
          const Center(child: Text('ErrorState'));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                 context.read<ClientCubit>().logOutUser();
                 AutoRouter.of(context);
                 context.replaceRoute(const SignUpRoute());
                 },
                icon: const Icon(Icons.remove_circle_outline_rounded),
              )
            ],
            title: Text(S.of(context).clients),
          ),
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < clients.length; i++)
              ClientAvatar(
                avatarColor: clients[i].color,
                clientName: 'client${clients[i].id}',
                onAvatarTap: () => context.router.push(
                  ClientInfoRoute(
                    clientId: clients[i].id,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  },
);
  }
}
