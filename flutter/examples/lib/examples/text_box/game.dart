import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class TextBoxGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      TextBoxComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        anchor: Anchor.center,
        text: "Hello, World! This is a Flame's TextBox.",
        size: Vector2(200, 100),
        boxConfig: TextBoxConfig(
          timePerChar: 0.08,
        ),
      ),
    );
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    canvas.drawRect(
      Rect.fromLTWH(
        size.x * 0.5 - 100,
        size.y * 0.5 - 50,
        200,
        100,
      ),
      Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2,
    );
  }
}
