import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/widgets/molecules/client_avatar.dart';
import 'package:solution_starter/widgets/templates/client.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  static const path = 'client_screen';
  static const route = 'ClientsBaseRouter';

  @override
  Widget build(BuildContext context) {
    final clients = Client.clients;
    return Scaffold(
      appBar: AppBar(
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
  }
}
