import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:solution_global_provider/solution_global_provider.dart';
import 'package:solution_starter/core/theme/theme_container.dart';
import 'package:solution_starter/core/theme/theme_extension/radius_extension.dart';
import 'package:solution_starter/data/datasource/local/storage_helper.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/solution_injection.dart';

class AppEntry extends StatelessWidget {
  AppEntry({super.key});

  final _router = AppRouter();

   Future<ThemeMode> getThemeMode(BuildContext buildContext) async {
      final themeModeValue = Provider.of<StorageHelper>(buildContext).getThemeConfiguration();
      return ThemeMode.values[await themeModeValue ?? 0];
  }

  Future<Locale> getLocale(BuildContext buildContext) async {
    final localeValue = Provider.of<StorageHelper>(buildContext).getLocaleConfiguration();
    return Locale(await localeValue ?? 'en');
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MultiProvider(
      providers: SolutionInjection.getDiList(context),
      child: Builder(
        builder: (BuildContext context) {
                   return GlobalProvider<ThemeMode, ThemeMode>(
                        shouldNotify: (newMode, oldMode) =>
                        newMode.index != oldMode.index,
                        future: getThemeMode(context),
                        initValue: ThemeMode.system,
                        builder: (_, themeMode) {
                          return GlobalProvider<Locale, Locale>(
                            shouldNotify: (newMode, oldMode) =>
                            newMode.languageCode != oldMode.languageCode,
                            future: getLocale(context),
                            initValue: const Locale('en'),
                            builder: (context, locale) {
                              final themeExtensions = <ThemeExtension>[
                                RadiusExtension.instance,
                              ];

                              return MaterialApp.router(
                                title: 'Silverstone',
                                theme: ThemeContainer.lightTheme.copyWith(
                                  extensions: themeExtensions),
                                darkTheme: ThemeContainer.darkTheme.copyWith(
                                  extensions: themeExtensions),
                                themeMode: themeMode,
                                routerDelegate: _router.delegate(),
                                routeInformationParser: _router
                                    .defaultRouteParser(),
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
                        }
                    );
                  }
      ),
    );
  }
}

