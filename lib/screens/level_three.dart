import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import '../game/jump_game.dart';
import '../components/platform.dart';
import '../components/collectible.dart';
import '../components/player.dart';

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
    final centerX = camera.visibleWorldRect.width / 2;
    final bottomY = camera.visibleWorldRect.height;

    await world.addAll([
      Platform(Vector2(centerX - 10, bottomY - 3), Vector2(5, 0.5)),
      Platform(Vector2(centerX + 10, bottomY - 6), Vector2(5, 0.5)),
      Platform(Vector2(centerX - 6, bottomY - 10), Vector2(4, 0.5)),
      Platform(Vector2(centerX + 6, bottomY - 14), Vector2(4, 0.5)),
      Platform(Vector2(centerX - 3, bottomY - 18), Vector2(6, 0.5)),
      Platform(Vector2(centerX + 3, bottomY - 22), Vector2(3, 0.5)),
      Platform(Vector2(centerX, bottomY - 26), Vector2(5, 0.5)),
    ]);
    await world.add(Player(Vector2(centerX, bottomY - 28)));
    await world.add(Collectible(Vector2(centerX, bottomY - 30)));
  }
}
