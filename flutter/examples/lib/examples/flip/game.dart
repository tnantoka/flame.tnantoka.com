import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class FlipGame extends FlameGame with TapDetector {
  late final SpriteComponent _sprite;
  @override
  Future<void> onLoad() async {
    super.onLoad();

    _sprite = SpriteComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      anchor: Anchor.center,
      sprite: await Sprite.load('player1.png'),
      size: Vector2.all(64),
    );
    await add(_sprite);
  }

  @override
  void onTap() {
    super.onTap();

    _sprite.flipHorizontally();
  }
}
