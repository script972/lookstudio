import 'package:lookstudio/presentation/profile_screen/profile_layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../domain/repository/solution_repository_interface.dart';
import 'bloc/setting_cubit.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const path = 'profile_screen';
  static const route = 'ProfileBaseRouter';

  @override
  Widget build(BuildContext context) {
    final storage = Provider.of<ISolutionRepository>(context);
    return BlocProvider<SettingCubit>(
      create: (context) {
        return SettingCubit(configurationRepository: storage);
      },
      child: const ProfileLayout(),
    );
  }
}
