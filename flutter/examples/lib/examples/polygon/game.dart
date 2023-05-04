import 'package:flame/components.dart';
import 'package:flame/game.dart';

class PolygonGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      PolygonComponent.relative(
        [
          Vector2(0, -1),
          Vector2(1, -1),
          Vector2(0, 1),
          Vector2(-1, 1),
        ],
        parentSize: Vector2.all(64),
        position: Vector2(size.x * 0.5, size.y * 0.5),
        anchor: Anchor.center,
      ),
    );
  }
}
