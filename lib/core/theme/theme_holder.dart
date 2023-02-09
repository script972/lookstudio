import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/theme_extension/redius_extension.dart';
import 'package:solution_starter/core/theme/theme_palette/default_palette.dart';


class ThemeHolder {
  static final extensions = <ThemeExtension>[
    RadiusExtension.instance,
  ];

  static ThemeData get lightTHeme {
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
        filled: true, //<-- SEE HERE
        fillColor: DefaultPalette.greyBackground,
      ),
      errorColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.greyBackground,
      extensions: extensions,
    );
  }
}
