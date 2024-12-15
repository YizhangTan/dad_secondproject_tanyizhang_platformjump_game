import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import '../game/jump_game.dart';
import '../components/platform.dart';
import '../components/collectible.dart';
import '../components/player.dart';

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
    final centerX = camera.visibleWorldRect.width / 2;
    final bottomY = camera.visibleWorldRect.height;

    await world.addAll([
      Platform(Vector2(centerX - 8, bottomY - 3), Vector2(6, 0.5)),
      Platform(Vector2(centerX + 8, bottomY - 6), Vector2(4, 0.5)),
      Platform(Vector2(centerX, bottomY - 10), Vector2(3, 0.5)),
      Platform(Vector2(centerX - 4, bottomY - 14), Vector2(5, 0.5)),
      Platform(Vector2(centerX + 4, bottomY - 18), Vector2(6, 0.5)),
    ]);
    await world.add(Player(Vector2(centerX, bottomY - 20)));
    await world.add(Collectible(Vector2(centerX, bottomY - 22)));
  }
}
