import 'package:flutter/material.dart';
import 'level_one.dart';
import 'level_two.dart';
import 'level_three.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Platform Jump Game')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LevelOne()),
              ),
              child: const Text('Level 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LevelTwo()),
              ),
              child: const Text('Level 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LevelThree()),
              ),
              child: const Text('Level 3'),
            ),
          ],
        ),
      ),
    );
  }
}
