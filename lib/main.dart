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

// import 'package:flutter/material.dart';
// import 'package:flutter_theming/theme/theme_constants.dart';
// import 'package:flutter_theming/theme/theme_manager.dart';

// import 'screens/main_screen.dart';
// // import 'package:flutter_theming/utils/helper_widgets.dart';

// void main() {
//   runApp(MyApp());
// }

// ThemeManager _themeManager = ThemeManager();

// class MyApp extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   void dispose() {
//     _themeManager.removeListener(themeListener);
//     super.dispose();
//   }

//   @override
//   void initState() {
//     _themeManager.addListener(themeListener);
//     super.initState();
//   }

//   themeListener(){
//     if(mounted){
//       setState(() {

//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       themeMode: _themeManager.themeMode,
//       home: MyHomeScreen1(),
//     );
//   }
// }
