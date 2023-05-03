import 'package:flame/components.dart';
import 'package:flame/game.dart';

class SpriteGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final sprite = await Sprite.load('asteroid.png');
    await add(
      SpriteComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        anchor: Anchor.center,
        sprite: sprite,
      ),
    );
  }
}
