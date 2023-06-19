import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class ScaleModeGame extends FlameGame {
  // <scale_mode1>
  final _content = RectangleComponent(
    size: Vector2(360, 640),
    paint: Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2,
  );
  // </scale_mode1>

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(_content);

    // <scale_mode3>
    await _content.add(
      TextComponent(
        text: 'ScaleMode',
        textRenderer: TextPaint(
          style: TextStyle(
            color: BasicPalette.white.color,
            fontSize: 48,
          ),
        ),
        position: Vector2(_content.size.x * 0.5, _content.size.y * 0.5),
        anchor: Anchor.center,
      ),
    );
    // </scale_mode3>
  }

  // <scale_mode2>
  @override
  void onGameResize(Vector2 size) {
    final scale = size.y / _content.size.y;
    _content.scale = Vector2.all(scale);
    _content.position = Vector2(
      size.x * 0.5 - _content.size.x * 0.5 * scale,
      0,
    );
    super.onGameResize(size);
  }
  // </scale_mode2>
}
