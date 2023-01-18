import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:solution_starter/core/theme/base_theme.dart';

class SolutionTheme extends BaseCoreTheme {
  @override
  ThemeData get themeData => ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.red,
        /*backgroundColor: _whiteColor,
        scaffoldBackgroundColor: _blueGreyFour,
        errorColor: _redColor,
        cardTheme: _buildCardTheme(),
        dividerTheme: _buildDividerTheme(),
        inputDecorationTheme: _inputDecorationTheme(),*/
      );

  @override
  Color get testThemeColor => Colors.yellow;

  @override
  double get iconSize => 24.0;

  @override
  double get buttonBorderRadius => 8.0;

  @override
  Color get primaryColor => const Color(0xFF1F3C31);

  @override
  Color get secondaryColor => const Color(0xFF0E1B16);
}
