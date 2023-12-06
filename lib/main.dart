import 'package:flutter/material.dart';
import 'package:flutter_theming/theme/theme_constants.dart';
import 'package:flutter_theming/theme/theme_manager.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager themeManager = ThemeManager();
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   @override
  void dispose() {
    super.dispose();
    themeManager.removeListener(themeListener);
  }

  @override
  void initState() {
    super.initState();
    themeManager.addListener(themeListener);
  }

  themeListener (){
   if(mounted){
     setState(() {
      
    });
   }
  }

 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeManager.themeMode,
      home: const MyHomeScreen1(),
    );
  }
}

