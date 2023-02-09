import 'package:flutter/material.dart';
import 'package:solution_starter/presentation/profile_screen/profile_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const path = 'profile_screen';
  static const route = 'ProfileBaseRouter';

  @override
  Widget build(BuildContext context) {
    return const ProfileLayout();
  }
}
