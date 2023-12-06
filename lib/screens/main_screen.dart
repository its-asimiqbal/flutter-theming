import 'package:flutter/material.dart';
import 'package:flutter_theming/main.dart';

class MyHomeScreen1 extends StatefulWidget {
  const MyHomeScreen1({super.key});

  @override
  State<MyHomeScreen1> createState() => _MyHomeScreen1State();
}

class _MyHomeScreen1State extends State<MyHomeScreen1> {
  @override
  Widget build(BuildContext context) {
    // ThemeManager themeManager = ThemeManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
        actions: [
          Switch(
            value: themeManager.themeMode == ThemeMode.dark,
            onChanged: (newValue) {
              themeManager.toggleTheme(newValue);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/profile1.jpeg',
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Your Name'),
            const SizedBox(
              height: 10,
            ),
            const Text('@yourusername'),
            const SizedBox(
              height: 10,
            ),
            const Text('This is a simple status'),
            const SizedBox(
              height: 10,
            ),
            const TextField(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click Here'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Current theme: ${Theme.of(context).brightness == Brightness.dark ? 'Dark' : 'Light'}',
            ),
          ],
        ),
      ),
    );
  }
}
