import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';

// <time_scale1>
class TimeScaleGame extends FlameGame with HasTimeScale {
// </time_scale1>
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
        position: Vector2(size.x * 0.5, size.y * 0.4),
        anchor: Anchor.center,
      ),
    );

    // <time_scale2>
    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.4, size.y * 0.6),
        onPressed: () => timeScale *= 0.5,
        button: TextComponent(
          text: '* 0.5',
        ),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.6, size.y * 0.6),
        onPressed: () => timeScale *= 2,
        button: TextComponent(
          text: '* 2',
        ),
        anchor: Anchor.center,
      ),
    );
    // </time_scale2>
  }
}
