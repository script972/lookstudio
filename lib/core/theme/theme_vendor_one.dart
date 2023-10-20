import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/solution_theme.dart';
import 'package:solution_starter/core/theme/theme_palette/default_palette.dart';
import 'package:solution_starter/generated/assets/fonts.gen.dart';

abstract class VendorOneCoreTheme implements SolutionTheme {
  @override
  SolutionSizeTheme sizeTheme = SolutionSizeTheme(
    iconSize: 36.0,
    buttonBorderRadius: 12.0,
  );

  @override
  SolutionDataTheme dataTheme = SolutionDataTheme(
    privacyPolicy: 'privacyPolicyURL',
  );
}

class VendorThemeOneLight extends VendorOneCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: DefaultPalette.deepPurpleAccent,
        onPrimary: Colors.white,
        secondary: Color(0xFF03DAC6),
        onSecondary: Colors.black,
        background: Colors.white,
        onBackground: Color(0xFF333333),
        surface: Colors.white,
        onSurface: Color(0xFF333333),
        error: Color(0xFFB00020),
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.deepPurpleAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          height: 64 / 57,
          fontSize: 57,
        ),
        // IMPLEMENTED
        displayMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          fontSize: 45,
          height: 52 / 45,
        ),
        displaySmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          fontSize: 36,
          height: 44 / 36,
        ),
        headlineLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          height: 44 / 32,
          fontSize: 32,
        ),
        headlineMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 28,
          height: 40 / 28,
        ),
        headlineSmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          height: 36 / 24,
          fontSize: 24,
        ),
        titleLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          height: 24 / 18,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 24 / 16,
        ),
        titleSmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 20 / 14,
        ),
        labelLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 20 / 14,
        ),
        labelMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          height: 18 / 12,
        ),
        labelSmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          height: 16 / 11,
        ),
        bodyLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          height: 24 / 16,
        ),
        bodyMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 20 / 14,
        ),
        bodySmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 18 / 12,
        ),
      ).apply(fontFamily: FontFamily.roboto),
    );
  }

  @override
  SolutionAssetsTheme get assetsTheme => SolutionAssetsTheme(logoImage: 'logo2/', envelopeImage: 'assetsTheme');

  @override
  SolutionColorTheme get colorTheme => SolutionColorTheme(gray1Color: Colors.greenAccent, grayColor: Colors.indigo);
}

class VendorThemeOneDark extends VendorOneCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: DefaultPalette.pinkAccent,
        onPrimary: Colors.white,
        secondary: Color(0xFF03DAC6),
        onSecondary: Colors.black,
        background: Color(0xFF121212),
        onBackground: Color(0xFFE0E0E0),
        surface: Color(0xFF333333),
        onSurface: Color(0xFFE0E0E0),
        error: Color(0xFFB00020),
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.pinkAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          )),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          height: 64 / 57,
          fontSize: 57,
        ),
        // IMPLEMENTED
        displayMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          fontSize: 45,
          height: 52 / 45,
        ),
        displaySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          fontSize: 36,
          height: 44 / 36,
        ),
        headlineLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          height: 44 / 32,
          fontSize: 32,
        ),
        headlineMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 28,
          height: 40 / 28,
        ),
        headlineSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          height: 36 / 24,
          fontSize: 24,
        ),
        titleLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w600,
          height: 24 / 18,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 24 / 16,
        ),
        titleSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 20 / 14,
        ),
        labelLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 20 / 14,
        ),
        labelMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          height: 18 / 12,
        ),
        labelSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          height: 16 / 11,
        ),
        bodyLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          height: 24 / 16,
        ),
        bodyMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 20 / 14,
        ),
        bodySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 18 / 12,
        ),
      ).apply(fontFamily: FontFamily.roboto),
    );
  }

  @override
  SolutionAssetsTheme get assetsTheme => SolutionAssetsTheme(logoImage: 'logo/', envelopeImage: 'envelope');

  @override
  SolutionColorTheme get colorTheme => SolutionColorTheme(gray1Color: Colors.grey, grayColor: Colors.indigo);
}
