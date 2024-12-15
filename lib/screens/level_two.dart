import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import '../game/jump_game.dart';
import '../components/platform.dart';
import '../components/collectible.dart';

class LevelTwo extends StatelessWidget {
  const LevelTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Level 2')),
      body: GameWidget(game: LevelTwoGame()),
    );
  }
}

class LevelTwoGame extends JumpGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await world.addAll([
      Platform(Vector2(0, -2), Vector2(6, 0.5)),
      Platform(Vector2(-2, 2), Vector2(4, 0.5)),
      Platform(Vector2(2, 5), Vector2(4, 0.5)),
      Platform(Vector2(0, 8), Vector2(3, 0.5)),
    ]);
    await world.add(Collectible(Vector2(0, 10)));
  }
}
