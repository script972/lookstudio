import 'package:flutter/material.dart';
import 'package:solution_starter/configs/environment/environment_variables.dart';
import 'package:solution_starter/core/theme/theme_holder.dart';

abstract class ThemeContainer {
  static ThemeData get lightTheme => _vendorTheme.lightTheme;

  static ThemeData get darkTheme => _vendorTheme.darkTheme;

  static const _isVendorTheme1 = EnvironmentVariables.vendorThemeConfiguration == 1;
  static const _isVendorTheme2 = EnvironmentVariables.vendorThemeConfiguration == 2;

  static final _vendorTheme1 = VendorTheme1();
  static final _vendorTheme2 = VendorTheme2();
  static final _defaultVendorTheme = _vendorTheme1;

  static VendorTheme get _vendorTheme {
    if (_isVendorTheme1) return _vendorTheme1;
    if (_isVendorTheme2) return _vendorTheme2;
    return _defaultVendorTheme;
  }
}