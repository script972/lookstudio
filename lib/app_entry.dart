import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:solution_global_provider/solution_global_provider.dart';
import 'package:solution_starter/core/theme/solution_theme.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/solution_injection.dart';

class AppEntry extends StatelessWidget {
  AppEntry({super.key});

  final _router = AppRouter();

  ThemeMode getThemeMode(AsyncSnapshot<int?> snapshot) {
    if (snapshot.hasData) {
      return ThemeMode.values[snapshot.data!];
    } else {
      return ThemeMode.system;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: SolutionInjection.getDiList(context),
      child: Builder(
        builder: (BuildContext context) {
          return GlobalProvider<ThemeMode, ThemeMode>(
            shouldNotify: (newMode, oldMode) => newMode.index != oldMode.index,
            future: ThemeMode.dark,
            initValue: ThemeMode.system,
            builder: (_, themeMode) {
              return GlobalProvider<Locale, Locale>(
                shouldNotify: (newMode, oldMode) => newMode.languageCode != oldMode.languageCode,
                future: const Locale('en', 'US'),
                initValue: const Locale('en', 'US'),
                builder: (context, locale) {
                  return MaterialApp.router(
                    title: 'Silverstone',
                    theme: Provider.of<ThemeContainer>(context).lightTheme.themeData,
                    darkTheme: Provider.of<ThemeContainer>(context).darkTheme.themeData,
                    themeMode: themeMode,
                    routerDelegate: _router.delegate(),
                    routeInformationParser: _router.defaultRouteParser(),
                    localizationsDelegates: const [
                      S.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: S.delegate.supportedLocales,
                    locale: locale,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
