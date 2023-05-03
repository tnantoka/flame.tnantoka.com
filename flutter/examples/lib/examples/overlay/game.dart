import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class OverlayGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.5, size.y * 0.2),
        onPressed: () => overlays.add('modal'),
        button: TextComponent(
          text: 'Modal',
          textRenderer: TextPaint(
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        anchor: Anchor.center,
      ),
    );
  }
}
