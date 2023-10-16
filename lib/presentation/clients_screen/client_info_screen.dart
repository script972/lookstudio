import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/widgets/molecules/client_avatar.dart';
import 'package:solution_starter/widgets/templates/client.dart';

@RoutePage()
class ClientInfoScreen extends StatelessWidget {
  const ClientInfoScreen({
    super.key,
   required this.clientId,
  });

  final int clientId;

  @override
  Widget build(BuildContext context) {
    final client = Client.clients[clientId - 1];
    return Scaffold(
      backgroundColor: client.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClientAvatar(
              avatarColor: Colors.white,
              clientName: 'client${client.id}',
            )
          ],
        ),
      ),
    );
  }
}
