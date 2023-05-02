import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class TextGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      TextComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        anchor: Anchor.center,
        text: 'Hello',
        textRenderer: TextPaint(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontFamily: 'DotGothic16',
          ),
        ),
      ),
    );
  }
}
