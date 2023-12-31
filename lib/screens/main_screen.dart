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
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Icon(
                Icons.login,
                size: 120,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Asim Iqbal',
                style: _textTheme.headlineMedium?.copyWith(
                  color: isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '@yourusername',
                style: _textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('This is a simple status'),
              const SizedBox(
                height: 20,
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
      ),
    );
  }
}
