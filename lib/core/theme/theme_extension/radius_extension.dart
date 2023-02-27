import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:solution_starter/configs/environment/environment_variables.dart';
import 'package:solution_starter/core/theme/theme_extension/size_extension.dart';



class ExtensionContainer{

  static const _isExtensions1 = EnvironmentVariables.vendorThemeConfiguration == 1;
  static const _isExtensions2 = EnvironmentVariables.vendorThemeConfiguration == 2;

  List<ThemeExtension> returnExtension(){
    if (_isExtensions1) return themeExtensions1;
    if (_isExtensions2) return themeExtensions2;
    return themeExtensions1;
  }

  final themeExtensions1 = <ThemeExtension>[
    RadiusExtension1.instance,
    SizeExtension.instance
  ];


  final themeExtensions2 = [
    RadiusExtension2.instance,
  ];
}

abstract class VendorRadiusExtension{
  VendorRadiusExtension({required this.buttonBorderRadius});

  final double buttonBorderRadius;
}

class RadiusExtension1 extends ThemeExtension<RadiusExtension1> implements VendorRadiusExtension {
  const RadiusExtension1._({required this.buttonBorderRadius});


  static const _buttonBorderRadiusValue = 8.0;

  static const instance = RadiusExtension1._(
    buttonBorderRadius: _buttonBorderRadiusValue,
  );

  @override
  final double buttonBorderRadius;

  @override
  ThemeExtension<RadiusExtension1> copyWith({
    double? buttonBorderRadius,
  }) =>
      RadiusExtension1._(
        buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<RadiusExtension1> lerp(
      ThemeExtension<RadiusExtension1>? other,
      double t,
      ) {
    if (other is! RadiusExtension1) return this;

    return RadiusExtension1._(
      buttonBorderRadius:
      lerpDouble(buttonBorderRadius, other.buttonBorderRadius, t) ?? 0,
    );
  }
}

// other radius -------------

class RadiusExtension2 extends ThemeExtension<RadiusExtension1> implements VendorRadiusExtension {
  const RadiusExtension2._({required this.buttonBorderRadius});


  static const _buttonBorderRadiusValue = 37.0;

  static const instance = RadiusExtension1._(
    buttonBorderRadius: _buttonBorderRadiusValue,
  );

  @override
  final double buttonBorderRadius;

  @override
  ThemeExtension<RadiusExtension1> copyWith({
    double? buttonBorderRadius,
  }) =>
      RadiusExtension1._(
        buttonBorderRadius: buttonBorderRadius ?? this.buttonBorderRadius,
      );

  // Controls how the properties change on theme changes
  @override
  ThemeExtension<RadiusExtension1> lerp(
      ThemeExtension<RadiusExtension1>? other,
      double t,
      ) {
    if (other is! RadiusExtension1) return this;

    return RadiusExtension1._(
      buttonBorderRadius:
      lerpDouble(buttonBorderRadius, other.buttonBorderRadius, t) ?? 0,
    );
  }
}