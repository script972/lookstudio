import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:value_provider/value_provider.dart';

import '../../generated/l10n.dart';
import '../../navigation/app_router.dart';
import '../../widgets/molecules/button_item.dart';
import 'bloc/setting_cubit.dart';

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
        listener: (context, state) {
          state.maybeWhen(
              logoutState: () => context.router.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => false,
              ),
              orElse: () => {});
        },
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
                      bgColor: Theme.of(context).colorScheme.onBackground,
                      onPressed: () async {
                        context.read<SettingCubit>().saveLocaleConfig('uk');
                        ValueProvider.of<Locale>(context).value = const Locale('uk');
                      },
                      text: S.current.ukraine,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ButtonItem(
                      context,
                      bgColor: Theme.of(context).colorScheme.onBackground,
                      onPressed: () async {
                        context.read<SettingCubit>().saveLocaleConfig('en');
                        ValueProvider.of<Locale>(context).value = const Locale('en');
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
                      bgColor: Theme.of(context).colorScheme.onBackground,
                      onPressed: () async {
                        context.read<SettingCubit>().saveThemeConfig(ThemeMode.light);
                        ValueProvider.of<ThemeMode>(context).value = ThemeMode.light;
                      },
                      text: S.current.light,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ButtonItem(
                      context,
                      bgColor: Theme.of(context).colorScheme.onBackground,
                      onPressed: () async {
                        context.read<SettingCubit>().saveThemeConfig(ThemeMode.dark);
                        ValueProvider.of<ThemeMode>(context).value = ThemeMode.dark;
                      },
                      text: S.current.dark,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ButtonItem(
                    context,
                    bgColor: Theme.of(context).colorScheme.onBackground,
                    onPressed: () => context.read<SettingCubit>().logOutUser(),
                    text: S.of(context).logout,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
