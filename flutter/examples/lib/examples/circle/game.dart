import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class CircleGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      CircleComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        radius: size.x * 0.1,
        anchor: Anchor.center,
        paint: BasicPalette.gray.paint(),
      ),
    );
  }
}
