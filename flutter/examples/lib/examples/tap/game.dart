import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class TapGame extends FlameGame with TapDetector {
  @override
  Future<void> onLoad() async {
    super.onLoad();
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);

    add(
      CircleComponent(
        position: info.eventPosition.game,
        radius: 10,
        anchor: Anchor.center,
      ),
    );
  }
}
