import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'home_layout.dart';
@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return const HomeLayout();
  }
}
