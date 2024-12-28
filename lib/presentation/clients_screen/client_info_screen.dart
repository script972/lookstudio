import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../domain/model/user_model.dart';
import '../../widgets/molecules/client_avatar.dart';

/*@RoutePage()*/
class ClientInfoScreen extends StatelessWidget {
   ClientInfoScreen({ required this.user,});

   final UserModel user;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: client.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClientAvatar(
              avatarColor: Colors.white,
              clientName: 'client',
              //clientName: 'client${user.id}',
            )
          ],
        ),
      ),
    );
  }
}
