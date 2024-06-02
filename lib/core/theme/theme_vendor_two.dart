import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/solution_theme.dart';
import 'package:solution_starter/core/theme/theme_palette/default_palette.dart';

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

class VendorThemeTwoLight extends VendorOneCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      disabledColor: DefaultPalette.deepPurpleAccent,
      primaryColor: Colors.green,
      dividerColor: DefaultPalette.deepPurpleAccent,
      unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
      hintColor: DefaultPalette.deepPurpleAccent,
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
            borderSide:
                BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          )),
      cardColor: DefaultPalette.redAccent,
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DefaultPalette.whiteBackground,
        elevation: 8.0,
        selectedItemColor: DefaultPalette.whiteBackground,
        unselectedItemColor: DefaultPalette.whiteBackground,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 96,
          letterSpacing: -1.5,
        ),
        displayMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 60,
          letterSpacing: -0.5,
        ),
        displaySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 48,
          letterSpacing: 0,
        ),
        headlineMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          letterSpacing: 0,
        ),
        headlineSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 24,
          letterSpacing: 0.18,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.15,
        ),
        titleSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        bodyLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        bodyMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0.25,
        ),
        labelLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
        bodySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400, // Normal
          fontSize: 12,
          letterSpacing: 0.4,
        ),
        labelSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 10,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ).apply(fontFamily: 'Roboto'),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: DefaultPalette.kToDark)
          .copyWith(
              background: DefaultPalette
                  .deepPurpleAccent), // Todo: check generation assets
    );
  }

  @override
  SolutionAssetsTheme get assetsTheme =>
      SolutionAssetsTheme(logoImage: 'logo2/', envelopeImage: 'assetsTheme');

  @override
  SolutionColorTheme get colorTheme => SolutionColorTheme(
      gray1Color: Colors.greenAccent, grayColor: Colors.indigo);
}

class VendorThemeTwoDark extends VendorOneCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      disabledColor: DefaultPalette.deepPurpleAccent,
      primaryColor: DefaultPalette.deepPurpleAccent,
      dividerColor: DefaultPalette.deepPurpleAccent,
      unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
      hintColor: DefaultPalette.deepPurpleAccent,
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
            borderSide:
                BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
          )),
      scaffoldBackgroundColor: DefaultPalette.whiteBackground,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: DefaultPalette.whiteBackground,
        elevation: 8.0,
        selectedItemColor: DefaultPalette.whiteBackground,
        unselectedItemColor: DefaultPalette.whiteBackground,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 96,
          letterSpacing: -1.5,
        ),
        displayMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 60,
          letterSpacing: -0.5,
        ),
        displaySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 48,
          letterSpacing: 0,
        ),
        headlineMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 34,
          letterSpacing: 0,
        ),
        headlineSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 24,
          letterSpacing: 0.18,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 20,
          letterSpacing: 0.15,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.15,
        ),
        titleSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        bodyLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0.5,
        ),
        bodyMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0.25,
        ),
        labelLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
        bodySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400, // Normal
          fontSize: 12,
          letterSpacing: 0.4,
        ),
        labelSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 10,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ).apply(fontFamily: 'Roboto'),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return DefaultPalette.deepPurpleAccent;
          }
          return null;
        }),
      ),
      colorScheme: ColorScheme.fromSwatch(primarySwatch: DefaultPalette.kToDark)
          .copyWith(background: DefaultPalette.deepPurpleAccent)
          .copyWith(
              error: DefaultPalette.redAccent), // Todo: check generation assets
    );
  }

  @override
  SolutionAssetsTheme get assetsTheme =>
      SolutionAssetsTheme(logoImage: 'logo/', envelopeImage: 'envelope');

  @override
  SolutionColorTheme get colorTheme =>
      SolutionColorTheme(gray1Color: Colors.grey, grayColor: Colors.indigo);
}
