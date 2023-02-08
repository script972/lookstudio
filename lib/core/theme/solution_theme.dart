import 'dart:ui';

import 'package:flutter/material.dart';

class LightPalette {
  static const greenColor = Color(0xFF004D40);
  static const yellow = Color(0xFF004D20);
  static const primaryColor = Color(0xFF1F3C31);
  static const secondColor = Color(0xFF0E1B16);
}

class DarkPalette {
  static const greenColor = Color(0xFF004D40);
  static const yellow = Color(0xFF004D20);
  static const primaryColor = Color(0xFF1F3C31);
  static const secondColor = Color(0xFF0E1B16);
}

// todo: separated every extension as another file
class RadiusExtension extends ThemeExtension<RadiusExtension> {
  const RadiusExtension._({required this.buttonBorderRadius});


  static const _buttonBorderRadiusValue = 8.0;

  static const instance = RadiusExtension._(
    buttonBorderRadius: _buttonBorderRadiusValue,
  );

  final double buttonBorderRadius;

  @override
  ThemeExtension<RadiusExtension> copyWith({
    double? buttonBorderRadius,
  }) =>
      RadiusExtension._(
        buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<RadiusExtension> lerp(
    ThemeExtension<RadiusExtension>? other,
    double t,
  ) {
    if (other is! RadiusExtension) return this;

    return RadiusExtension._(
      buttonBorderRadius:
          lerpDouble(buttonBorderRadius, other.buttonBorderRadius, t) ?? 0,
    );
  }
}

class SizeExtension {
  final iconSize = 24.0;
}

class ThemeHolder {
  static final extensions = <ThemeExtension>[
    RadiusExtension.instance,
  ];
// todo: separated themeData to another file
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

//
