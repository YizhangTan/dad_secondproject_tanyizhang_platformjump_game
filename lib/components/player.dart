import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

class Player extends BodyComponent with TapCallbacks {
  Player(Vector2 position)
      : super(
          bodyDef: BodyDef()
            ..position = position
            ..type = BodyType.dynamic
            ..linearVelocity = Vector2(0, 0),
          fixtureDefs: [
            FixtureDef(CircleShape()..radius = 0.5)
              ..density = 1.0
              ..friction = 0.5,
          ],
        );

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset.zero, 0.5, Paint()..color = Colors.green);
  }

  @override
  void onTapDown(TapDownEvent event) {
    body.applyLinearImpulse(Vector2(0, -10)); /
  }
}
