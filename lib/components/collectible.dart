import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

class Collectible extends BodyComponent {
  Collectible(Vector2 position)
      : super(
          bodyDef: BodyDef()
            ..position = position
            ..type = BodyType.static,
          fixtureDefs: [
            FixtureDef(CircleShape()..radius = 0.3)..isSensor = true,
          ],
        );

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(
      Offset.zero,
      0.3,
      Paint()..color = Colors.yellow,
    );
  }
}
