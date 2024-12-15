import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Player extends BodyComponent with HasGameRef<Forge2DGame>, TapCallbacks {
  Player(Vector2 position)
      : super(
          bodyDef: BodyDef()
            ..position = position
            ..type = BodyType.dynamic,
          fixtureDefs: [
            FixtureDef(CircleShape()..radius = 0.5)
              ..density = 1.0
              ..friction = 0.5,
          ],
        );

  @override
  void onTapDown(TapDownEvent event) {
    final tapPosition = event.devicePosition.x;
    final screenWidth = gameRef.size.x;

    if (tapPosition < screenWidth / 2) {
      body.applyLinearImpulse(Vector2(-2, 0));
    } else {
      body.applyLinearImpulse(Vector2(2, 0));
    }
    body.applyLinearImpulse(Vector2(0, -5));
  }

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset.zero, 0.5, Paint()..color = Colors.green);
  }
}
