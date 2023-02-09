import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/theme_extension/redius_extension.dart';
import 'package:solution_starter/core/theme/theme_palette/dark_palette.dart';
import 'package:solution_starter/core/theme/theme_palette/light_palette,dart.dart';

class ThemeHolder {
  static final extensions = <ThemeExtension>[
    RadiusExtension.instance,
  ];

  static ThemeData get lightTHeme {
    return ThemeData(
      primaryColor: LightPalette.primaryColor,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: LightPalette.secondColor),
      backgroundColor: Colors.white,
      extensions: extensions,
    );
  }

  static ThemeData get darkTheme => ThemeData(
    primaryColor: DarkPalette.primaryColor,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: DarkPalette.secondColor),
    backgroundColor: Colors.white,
    extensions: extensions,
  );
}