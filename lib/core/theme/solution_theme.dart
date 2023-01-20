import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/core/theme/theme_mode_provider.dart';

abstract class SolutionTheme {
  factory SolutionTheme(BuildContext context) {
    final themeMode = ThemeModeProvider.of(context).value;
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

  Color get testThemeColor;

  double get iconSize;
  double get buttonBorderRadius;
  Color get primaryColor;
  Color get secondaryColor;

  /*
    // Radius
  double get basicBorderRadius;

  Color get borderColor;


   //Data
  String get urlLink;
  String get appealUrlLink;

  // Links
  String get termsAndConditionsLink;
  String get privacyPolicyLink;
  String get supportUrl;

  // Assets
  String get iconAdjustments;

  // Text themes
  TextStyle get h1_32;

  // Backgrounds
  Widget get loginScreenBackground;
  Widget get generalBackground;
  Widget get restoreSessionBackground;

  // Views
  Widget get fullscreenLoading;

  // Screen system UI overlay darkness
  SystemUiOverlayStyle get loginScreenBrightness;
  SystemUiOverlayStyle get homeScreenBrightness;
  SystemUiOverlayStyle get fullScreenErrorBrightness;



  // ------------------------- Colors -------------------------
  // primary
  Color get primaryPrimary;
  Color get primaryActive;

  // secondary
  Color get secondary;
  Color get secondaryContainer;
  Color get secondaryActive;

  // tertiary
  Color get tertiary;

  // text
  Color get textTitle;
  Color get textBody;
  Color get textSecondary;
  Color get textDisabled;
  Color get textOnColor;
  Color get textAccent;
  Color get textAccentActive;

  //gradients
  Color get brandingGradientsFade1;
  Color get brandingGradientsFade2;

  //To avoid
  Color get primaryOne;
  Color get basicTwo;
  Color get basicOne;
  Color get iconDisabled;

  // icon
  Color get iconPrimary;

  // background
  Color get backgroundOne;*/
}

abstract class BaseCoreTheme implements SolutionTheme {
  double borderRadius = 8.0;
}

class ThemeContainer {
  final SolutionTheme lightTheme;
  final SolutionTheme darkTheme;

  ThemeContainer(this.lightTheme, this.darkTheme);
}
