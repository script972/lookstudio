import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/core/firebase_options.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/core/theme/solution_theme.dart';
import 'package:solution_starter/core/theme/theme_mode_provider.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/router/solution_router.gr.dart';
import 'package:solution_starter/solution_injection.dart';

void main(List<String> args) async {
  final Logger logger = getLogger('main');

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  logger.i('ensureInitialized');

  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    debugPrint('>>>>>>>>>1e${e}');
  }

  //  asyncMethod();

  runApp(SolutionApp());
}

class SolutionApp extends StatelessWidget {
  SolutionApp({super.key});

  final SolutionRouter _coreRouter = SolutionRouter();

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
      child: Builder(builder: (BuildContext context) {
        return FutureBuilder(
            future: Future.value(null),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return ThemeModeProvider(
                themeMode: getThemeMode(snapshot as AsyncSnapshot<int?>),
                builder: (_, themeMode) {
                  return MaterialApp.router(
                    title: 'Solution',
                    theme: Provider.of<ThemeContainer>(context).lightTheme.themeData,
                    darkTheme: Provider.of<ThemeContainer>(context).darkTheme.themeData,
                    themeMode: themeMode,
                    routerDelegate: _coreRouter.delegate(),
                    routeInformationParser: _coreRouter.defaultRouteParser(),
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
            });
      }),
    );
  }
}
