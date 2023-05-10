import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class EffectGame extends FlameGame with TapDetector {
  final random = Random();
  late RectangleComponent _rect;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _rect = RectangleComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      size: Vector2.all(size.x * 0.1),
      anchor: Anchor.center,
    );

    await add(_rect);
  }

  @override
  void onTap() {
    super.onTap();

    final effect = MoveByEffect(
      Vector2(
            random.nextDouble() * 2 - 1,
            random.nextDouble() * 2 - 1,
          ) *
          50,
      EffectController(duration: 0.3),
    );
    _rect.add(effect);
  }
}
