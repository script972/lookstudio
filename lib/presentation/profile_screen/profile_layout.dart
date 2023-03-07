import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_global_provider/solution_global_provider.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/presentation/profile_screen/bloc/setting_cubit.dart';
import 'package:solution_starter/widgets/molecules/button_item.dart';

class ProfileLayout extends StatefulWidget {
  const ProfileLayout({super.key});

  @override
  State<ProfileLayout> createState() => _ProfileLayoutState();
}

class _ProfileLayoutState extends State<ProfileLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profile),
      ),
      body: BlocConsumer<SettingCubit, SettingState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonItem(
                      context,
                      onPressed: () async {
                        context.read<SettingCubit>().saveLocaleConfig('uk');
                        GlobalProvider.of<Locale>(context).value = const Locale('uk');
                      },
                      text: S.current.ukraine,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ButtonItem(
                      context,
                      onPressed: () async {
                        context.read<SettingCubit>().saveLocaleConfig('en');
                        GlobalProvider.of<Locale>(context).value = const Locale('en');
                      },
                      text: S.current.english,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonItem(
                      context,
                      onPressed: () async {
                        context.read<SettingCubit>().saveThemeConfig(ThemeMode.light);
                        GlobalProvider.of<ThemeMode>(context).value = ThemeMode.light;
                      },
                      text: S.current.light,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ButtonItem(
                      context,
                      onPressed: () async {
                        context.read<SettingCubit>().saveThemeConfig(ThemeMode.dark);
                        GlobalProvider.of<ThemeMode>(context).value = ThemeMode.dark;
                      },
                      text: S.current.dark,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
