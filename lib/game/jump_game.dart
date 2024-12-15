import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flame/components.dart';

class JumpGame extends Forge2DGame {
  JumpGame() : super(gravity: Vector2(0, 10));

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    camera.viewfinder.anchor = Anchor.center; // 将相机锚点设置为屏幕中央
  }
}
