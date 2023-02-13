import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/core/theme/theme_extension/radius_extension.dart';
import 'package:solution_starter/core/theme/theme_holder.dart';
import 'package:solution_starter/core/theme/theme_mode_provider.dart';
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
    FlutterNativeSplash.remove();
    return MultiProvider(
      providers: SolutionInjection.getDiList(context),
      child: Builder(
        builder: (BuildContext context) {
          return FutureBuilder(
            future: Future.value(null),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return ThemeModeProvider(
                themeMode: getThemeMode(snapshot as AsyncSnapshot<int?>),
                builder: (_, themeMode) {
                  return MaterialApp.router(
                    title: 'Silverstone',
                      theme: lightTheme.copyWith(
                    extensions: <ThemeExtension>[
                      RadiusExtension.instance,
                    ],),
                    darkTheme: darkTheme.copyWith(
                  extensions: <ThemeExtension>[
                  RadiusExtension.instance,],),
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

