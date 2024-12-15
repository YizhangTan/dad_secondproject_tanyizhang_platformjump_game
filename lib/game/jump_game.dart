import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

class JumpGame extends Forge2DGame with KeyboardEvents {
  JumpGame() : super(gravity: Vector2(0, 10));

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    camera.viewfinder.anchor = Anchor(0, 0);
  }
}
