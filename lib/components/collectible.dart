import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Collectible extends PositionComponent {
  Collectible(Vector2 position)
      : super(
          position: position,
          size: Vector2.all(1),
        );

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset.zero, 0.5, Paint()..color = Colors.yellow);
  }
}
