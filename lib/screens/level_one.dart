import 'package:flutter/material.dart';
import '../game/jump_game.dart';
import 'package:flame/game.dart';

class LevelOne extends StatelessWidget {
  const LevelOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Level 1')),
      body: GameWidget(game: LevelOneGame()),
    );
  }
}

class LevelOneGame extends JumpGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    final screenCenterX = camera.visibleWorldRect.width / 2;
    final screenCenterY = camera.visibleWorldRect.height / 2;

    await world.addAll([
      Platform(Vector2(screenCenterX - 4, screenCenterY - 2), Vector2(8, 0.5)),
      Platform(Vector2(screenCenterX, screenCenterY + 2), Vector2(6, 0.5)),
      Platform(Vector2(screenCenterX + 4, screenCenterY + 6), Vector2(4, 0.5)),
    ]);

    await world.add(Player(Vector2(screenCenterX, screenCenterY - 5)));
    await world.add(Collectible(Vector2(screenCenterX, screenCenterY - 8)));
  }
}
