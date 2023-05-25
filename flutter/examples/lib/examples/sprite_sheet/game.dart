import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';

class SpriteSheetGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final image = await images.load('power-up.png');

    final spritesheet = SpriteSheet(
      image: image,
      srcSize: Vector2.all(16),
    );

    for (var i = 0; i < 2; i++) {
      await add(
        SpriteAnimationComponent(
          animation: spritesheet.createAnimation(row: i, stepTime: 0.5),
          position: Vector2(
            size.x * 0.5,
            size.y * 0.4 + (i * 100),
          ),
          anchor: Anchor.center,
          size: Vector2.all(64),
        ),
      );
    }
  }
}
