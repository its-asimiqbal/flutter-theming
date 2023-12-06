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
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);
