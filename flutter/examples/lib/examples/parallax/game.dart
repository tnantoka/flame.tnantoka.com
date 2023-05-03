import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';

class ParallaxGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      await loadParallaxComponent(
        [
          ParallaxImageData('bg-back.png'),
          ParallaxImageData('bg-stars.png'),
        ],
        baseVelocity: Vector2(10, 0),
        velocityMultiplierDelta: Vector2(2.0, 0),
      ),
    );
  }
}
