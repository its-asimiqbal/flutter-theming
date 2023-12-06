import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
        actions: [
          Switch(
            value: false,
            onChanged: (newValue) {},
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
          ],
        ),
      ),
    );
  }
}
