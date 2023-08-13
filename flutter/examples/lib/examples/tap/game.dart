import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class TapGame extends FlameGame with TapCallbacks {
  @override
  Future<void> onLoad() async {
    super.onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);

    add(
      CircleComponent(
        position: event.localPosition,
        radius: 10,
        anchor: Anchor.center,
      ),
    );
  }
}
