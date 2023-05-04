import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

class SoundGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        onPressed: () => FlameAudio.play('hit.wav'),
        button: TextComponent(
          text: 'Play',
          textRenderer: TextPaint(
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        buttonDown: TextComponent(
          text: 'Play',
          textRenderer: TextPaint(
            style: const TextStyle(
              fontSize: 32,
              color: Colors.grey,
            ),
          ),
        ),
        anchor: Anchor.center,
      ),
    );
  }
}
