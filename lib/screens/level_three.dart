import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import '../game/jump_game.dart';
import '../components/platform.dart';
import '../components/collectible.dart';

class LevelThree extends StatelessWidget {
  const LevelThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Level 3')),
      body: GameWidget(game: LevelThreeGame()),
    );
  }
}

class LevelThreeGame extends JumpGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await world.addAll([
      Platform(Vector2(-3, -2), Vector2(4, 0.5)),
      Platform(Vector2(3, 1), Vector2(4, 0.5)),
      Platform(Vector2(0, 4), Vector2(3, 0.5)),
      Platform(Vector2(-3, 7), Vector2(3, 0.5)),
      Platform(Vector2(3, 10), Vector2(3, 0.5)),
    ]);
    await world.add(Collectible(Vector2(3, 12)));
  }
}
