import 'package:flutter/material.dart';
import 'package:solution_starter/presentation/home_screen/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return const HomeLayout();
  }
}
