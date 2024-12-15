import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';

class Platform extends BodyComponent {
  final Vector2 size;

  Platform(Vector2 position, this.size)
      : super(
          bodyDef: BodyDef()
            ..position = position
            ..type = BodyType.static,
          fixtureDefs: [
            FixtureDef(PolygonShape()..setAsBoxXY(size.x / 2, size.y / 2))
              ..friction = 0.3,
          ],
        );

  @override
  void render(Canvas canvas) {
    canvas.drawRect(
      Rect.fromCenter(center: Offset.zero, width: size.x, height: size.y),
      Paint()..color = Colors.brown,
    );
  }
}
