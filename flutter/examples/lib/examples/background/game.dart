import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class BackgroundGame extends FlameGame {
  // <background2>
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      RectangleComponent(
        size: Vector2.all(100),
        position: size * 0.5,
        anchor: Anchor.center,
      ),
    );
  }

  @override
  Color backgroundColor() {
    return Colors.grey.shade700;
  }
  // </background2>
}
