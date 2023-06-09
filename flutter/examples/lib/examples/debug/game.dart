import 'package:flame/components.dart';
import 'package:flame/game.dart';

class DebugGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    // <debug>
    debugMode = true;

    await add(
      FpsTextComponent(),
    );
    // </debug>

    await add(
      RectangleComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        size: Vector2.all(size.x * 0.1),
      ),
    );
  }
}
