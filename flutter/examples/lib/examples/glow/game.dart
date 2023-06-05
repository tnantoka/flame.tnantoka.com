import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class GlowGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final circle = CircleComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      radius: 100,
      anchor: Anchor.center,
      paint: BasicPalette.white.paint(),
    );

    await add(circle);

    final effect = GlowEffect(
      30.0,
      EffectController(
        duration: 3,
        reverseDuration: 3,
        infinite: true,
      ),
    );
    circle.add(effect);
  }
}
