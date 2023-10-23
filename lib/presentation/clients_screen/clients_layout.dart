import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/presentation/clients_screen/cubit/client_cubit.dart';
import 'package:solution_starter/widgets/molecules/client_avatar.dart';
import 'package:solution_starter/widgets/organisms/progress.dart';

class ClientsLayout extends StatelessWidget {
  const ClientsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientCubit, ClientScreenState>(
      listener: (context, state) {
        if (state is ClientErrorState) {
          const Center(child: Text('ErrorState'));
        }
      },
      builder: (context, state) {
        return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircleProgress()),
            loaded: (users) => Scaffold(
                  appBar: AppBar(
                    actions: [
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<ClientCubit>(context).deleteUserFromDb();
                        },
                        icon: const Icon(Icons.remove_circle_outline_rounded),
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<ClientCubit>(context).addClientToDb();
                        },
                        icon: const Icon(Icons.add_circle_outline_rounded),
                      )
                    ],
                    title: Text(S.of(context).clients),
                  ),
                  body: Center(
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return ClientAvatar(
                          avatarColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                          clientName: 'client${users[index].id}',
                          onAvatarTap: () => context.router.push(
                            ClientInfoRoute(
                              user: users[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
            error: (error) => Center(child: Text(error.toString())));
      },
    );
  }
}
