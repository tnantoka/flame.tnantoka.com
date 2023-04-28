import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class LineGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      RectangleComponent(
        position: Vector2(size.x * 0.5, 0),
        size: Vector2(1, size.y),
        paint: BasicPalette.white.paint(),
      ),
    );
    await add(
      RectangleComponent(
        position: Vector2(0, size.y * 0.5),
        size: Vector2(size.x, 1),
        paint: BasicPalette.white.paint(),
      ),
    );
  }
}
