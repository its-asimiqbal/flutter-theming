import 'package:flutter/material.dart';
import 'package:flutter_theming/theme/theme_constants.dart';
import 'package:flutter_theming/theme/theme_manager.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

  ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const MainScreen(),
    );
  }
}
