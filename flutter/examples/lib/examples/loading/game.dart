import 'package:flame/components.dart';
import 'package:flame/game.dart';

class LoadingGame extends FlameGame {
  // <loading2>
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await Future<void>.delayed(
      const Duration(seconds: 10),
    );

    await add(
      TextComponent(
        text: 'Loaded',
        position: Vector2(size.x * 0.5, size.y * 0.5),
        anchor: Anchor.center,
      ),
    );
  }
  // </loading2>
}
