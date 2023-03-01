import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution_global_provider/solution_global_provider.dart';
import 'package:solution_starter/core/theme/theme_container.dart';

class SolutionColorTheme {
  SolutionColorTheme({
    required this.grayColor,
    required this.gray1Color,
  });

  Color grayColor;
  Color gray1Color;
}

class SolutionSizeTheme {
  SolutionSizeTheme({
    required this.iconSize,
    required this.buttonBorderRadius,
  });

  final double iconSize;
  final double buttonBorderRadius;
}

class SolutionAssetsTheme {
  SolutionAssetsTheme({
    required this.logoImage,
    required this.envelopeImage,
  });

  String logoImage;
  String envelopeImage;
}

class SolutionDataTheme {
  SolutionDataTheme({
    required this.privacyPolicy,
  });

  String privacyPolicy;
}

abstract class SolutionTheme {
  factory SolutionTheme(BuildContext context) {
    final themeMode = GlobalProvider.of<SolutionTheme>(context).value;
    ThemeContainer themeValue = Provider.of<ThemeContainer>(context);
    switch (themeMode) {
      case ThemeMode.light:
        return themeValue.lightTheme;
      case ThemeMode.dark:
        return themeValue.darkTheme;
      default:
        if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
          return themeValue.darkTheme;
        } else {
          return themeValue.darkTheme;
        }
    }
  }

  ThemeData get themeData;

  SolutionColorTheme get colorTheme;
  SolutionSizeTheme get sizeTheme;
  SolutionAssetsTheme get assetsTheme;
}
