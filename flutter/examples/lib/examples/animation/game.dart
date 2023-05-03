import 'package:flame/components.dart';
import 'package:flame/game.dart';

class AnimationGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      SpriteAnimationComponent.fromFrameData(
        await images.load('explosion.png'),
        SpriteAnimationData.sequenced(
          textureSize: Vector2.all(32),
          amount: 6,
          stepTime: 0.2,
        ),
        position: Vector2(size.x * 0.5, size.y * 0.5),
        anchor: Anchor.center,
      ),
    );
  }
}
