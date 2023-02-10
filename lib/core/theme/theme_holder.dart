import 'package:flutter/material.dart';
import 'package:solution_starter/core/theme/theme_palette/default_palette.dart';

ThemeData get lightTheme {
  return ThemeData(
    primarySwatch: DefaultPalette.kToDark,
    backgroundColor: DefaultPalette.deepPurpleAccent,
    disabledColor: DefaultPalette.deepPurpleAccent,
    primaryColor: DefaultPalette.deepPurpleAccent,
    dividerColor: DefaultPalette.deepPurpleAccent,
    unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
    toggleableActiveColor: DefaultPalette.deepPurpleAccent,
    hintColor: DefaultPalette.deepPurpleAccent,
    appBarTheme: const AppBarTheme(
      shadowColor: DefaultPalette.deepPurpleAccent,
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
      )),
    errorColor: DefaultPalette.redAccent,
    scaffoldBackgroundColor: DefaultPalette.whiteBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DefaultPalette.whiteBackground,
      elevation: 8.0,
      selectedItemColor: DefaultPalette.whiteBackground,
      unselectedItemColor: DefaultPalette.whiteBackground,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 96,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 60,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 48,
        letterSpacing: 0,
      ),
      headline4: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        letterSpacing: 0,
      ),
      headline5: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontSize: 24,
        letterSpacing: 0.18,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontSize: 20,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400, // Normal
        fontSize: 12,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontSize: 10,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w500,
      ),
    ).apply(fontFamily: 'Roboto'),
  );

}

ThemeData get darkTheme {
  return ThemeData(
    primarySwatch: DefaultPalette.kToDark,
    backgroundColor: DefaultPalette.deepPurpleAccent,
    disabledColor: DefaultPalette.deepPurpleAccent,
    primaryColor: DefaultPalette.deepPurpleAccent,
    dividerColor: DefaultPalette.deepPurpleAccent,
    unselectedWidgetColor: DefaultPalette.deepPurpleAccent,
    toggleableActiveColor: DefaultPalette.deepPurpleAccent,
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
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        )),
    errorColor: DefaultPalette.redAccent,
    scaffoldBackgroundColor: DefaultPalette.whiteBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: DefaultPalette.whiteBackground,
      elevation: 8.0,
      selectedItemColor: DefaultPalette.whiteBackground,
      unselectedItemColor: DefaultPalette.whiteBackground,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 96,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 60,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 48,
        letterSpacing: 0,
      ),
      headline4: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 34,
        letterSpacing: 0,
      ),
      headline5: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontSize: 24,
        letterSpacing: 0.18,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontSize: 20,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w500,
      ),
      subtitle1: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
      ),
      subtitle2: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      ),
      bodyText1: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      bodyText2: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontWeight: FontWeight.w400, // Normal
        fontSize: 12,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        color: DefaultPalette.whiteBackground,
        fontSize: 10,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w500,
      ),
    ).apply(fontFamily: 'Roboto'), // Todo: check generation assets
  );
  }

