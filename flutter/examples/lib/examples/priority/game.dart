import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

// <priority2>
class PriorityGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await addAll([
      Rect(position: Vector2(100, 100), paint: BasicPalette.red.paint()),
      Rect(position: Vector2(120, 120), paint: BasicPalette.green.paint()),
      Rect(position: Vector2(140, 140), paint: BasicPalette.blue.paint()),
    ]);
  }
}
// </priority2>

// <priority1>
class Rect extends RectangleComponent with HasGameRef, TapCallbacks {
  Rect({super.position, super.paint})
      : super(
          size: Vector2.all(100),
        );

  @override
  void onTapDown(TapDownEvent event) {
    priority =
        game.children.whereType<Rect>().map((e) => e.priority).reduce(max) + 1;
  }
}
// </priority1>
