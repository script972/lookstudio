import 'package:flutter/material.dart';
import 'package:solution_starter/configs/environment/environment_variables.dart';
import 'package:solution_starter/core/theme/theme_extension/radius_extension.dart';
import 'package:solution_starter/core/theme/theme_extension/size_extension.dart';

class ExtensionContainer{
  static const _isExtensions1 = EnvironmentVariables.vendorThemeConfiguration == 1;
  static const _isExtensions2 = EnvironmentVariables.vendorThemeConfiguration == 2;

  List<ThemeExtension> returnExtension() {
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