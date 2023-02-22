import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/data/datasource/local/storage_helper.dart';
import 'package:solution_starter/presentation/profile_screen/bloc/setting_cubit.dart';
import 'package:solution_starter/presentation/profile_screen/profile_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const path = 'profile_screen';
  static const route = 'ProfileBaseRouter';

  @override
  Widget build(BuildContext context) {
    final storage = Provider.of<StorageHelper>(context);
    return BlocProvider<SettingCubit>(
      create: (context) {
        return SettingCubit(storageHelper: storage);
      },
      child: const ProfileLayout(),
    );
  }
}
