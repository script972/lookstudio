import 'package:aircode_starter/generated/l10n.dart';
import 'package:aircode_starter/solution_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:value_provider/value_provider.dart';

import 'core/theme/theme_container.dart';
import 'data/datasource/local/database/app_database.dart';
import 'data/datasource/local/secure_storage.dart';
import 'domain/repository/solution_repository_interface.dart';
import 'navigation/app_router.dart';

class AppEntry extends StatelessWidget {
  AppEntry(
      {required SecureStorage secureStorage,
      required AppDatabase database,
      super.key})
      : _router = AppRouter(storage: secureStorage),
        _database = database;

  final AppRouter _router;
  final AppDatabase _database;

  Future<ThemeMode> getThemeMode(BuildContext buildContext) async {
    final themeModeValue =
        Provider.of<ISolutionRepository>(buildContext).getTheme();
    return ThemeMode.values[await themeModeValue ?? 0];
  }

  Future<Locale> getLocale(BuildContext buildContext) async {
    final localeValue =
        Provider.of<ISolutionRepository>(buildContext).getLocale();
    return Locale(await localeValue ?? 'en');
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MultiProvider(
      providers: SolutionInjection.getDiList(context, _database),
      child: Builder(
        builder: (BuildContext context) {
          return ValueProvider<ThemeMode, ThemeMode>(
            shouldNotify: (newMode, oldMode) => newMode.index != oldMode.index,
            future: getThemeMode(context),
            initValue: ThemeMode.system,
            builder: (_, themeMode) {
              return ValueProvider<Locale, Locale>(
                shouldNotify: (newMode, oldMode) =>
                    newMode.languageCode != oldMode.languageCode,
                future: getLocale(context),
                initValue: const Locale('en', 'US'),
                builder: (context, locale) {
                  return MaterialApp.router(
                    title: 'Silverstone',
                    theme: ThemeFactory.lightTheme.themeData,
                    darkTheme: ThemeFactory.darkTheme.themeData,
                    themeMode: themeMode,
                    routerConfig: _router.config(),
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
