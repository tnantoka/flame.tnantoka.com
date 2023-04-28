import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class RectGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      RectangleComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        size: Vector2(size.x * 0.2, size.x * 0.2),
        paint: BasicPalette.white.paint(),
        anchor: Anchor.center,
      ),
    );
  }
}
