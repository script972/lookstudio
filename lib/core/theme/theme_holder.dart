import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/theme_extension/redius_extension.dart';
import 'package:solution_starter/core/theme/theme_mode_provider.dart';
import 'package:solution_starter/core/theme/theme_palette/default_palette.dart';


class ThemeHolder {

  factory ThemeHolder(BuildContext context) {
    final themeMode = ThemeModeProvider.of(context).value;
    switch (themeMode) {
      case ThemeMode.light:
        return ThemeHolder.lightTheme as ThemeHolder;
      case ThemeMode.dark:
        return ThemeHolder.darkTheme as ThemeHolder;
      default:
        if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
          return ThemeHolder.darkTheme as ThemeHolder;
        } else {
          return ThemeHolder.darkTheme as ThemeHolder;
        }
    }
  }


  static final extensions = <ThemeExtension>[
    RadiusExtension.instance,
  ];

  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.purple,
      primaryColor: DefaultPalette.deepPurpleAccent,
      appBarTheme: const AppBarTheme(
        color: DefaultPalette.deepPurpleAccent,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: DefaultPalette.whiteBackground,
      ),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      extensions: extensions,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.pink,
      primaryColor: DefaultPalette.pinkAccent,
      appBarTheme: const AppBarTheme(
        color: DefaultPalette.pinkAccent,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: DefaultPalette.greyBackground,
      ),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.greyBackground,
      extensions: extensions,
    );
  }
}
