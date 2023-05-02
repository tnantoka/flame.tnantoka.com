import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class ButtonGame extends FlameGame {
  // <button1>
  late final ButtonComponent _button;
  late final TextComponent _text;
  var _count = 0;
  // </button1>

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // <button2>
    _text = TextComponent(
      text: '0',
      position: Vector2(size.x * 0.5, size.y * 0.6),
      anchor: Anchor.center,
    );
    await add(_text);
    // </button2>

    // <button4>
    _button = ButtonComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      onPressed: () => _count++,
      button: TextComponent(
        text: 'Button',
        textRenderer: TextPaint(
          style: const TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
      buttonDown: TextComponent(
        text: 'Button',
        textRenderer: TextPaint(
          style: const TextStyle(
            fontSize: 32,
            color: Colors.grey,
          ),
        ),
      ),
      anchor: Anchor.center,
    );
    await add(_button);
    // </button4>
  }

  // <button3>
  @override
  void update(double dt) {
    super.update(dt);

    _text.text = _count.toString();
  }
  // </button3>
}
