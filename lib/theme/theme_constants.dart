import 'package:flutter/material.dart';

const kColorPrimary = Colors.deepOrangeAccent;
const kColorAccent = Colors.orange;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: kColorPrimary,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kColorAccent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsetsDirectional.symmetric(
          horizontal: 40,
          vertical: 15,
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(kColorAccent),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
    fillColor: Colors.grey.withOpacity(0.3),
    filled: true,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color?>(
      Colors.grey,
    ),
    thumbColor: MaterialStateProperty.all<Color?>(
      Colors.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsetsDirectional.symmetric(
          horizontal: 40,
          vertical: 15,
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
      foregroundColor: MaterialStateProperty.all<Color>(
        Colors.black,
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        Colors.black26,
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
    fillColor: Colors.white.withOpacity(0.3),
    filled: true,
  ),
);
