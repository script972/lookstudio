import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/widgets/molecules/client_avatar.dart';

@RoutePage()
class ClientInfoScreen extends StatelessWidget {
  const ClientInfoScreen({
    super.key,
   required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: client.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClientAvatar(
              avatarColor: Colors.white,
              clientName: 'client${user.id}',
            )
          ],
        ),
      ),
    );
  }
}
