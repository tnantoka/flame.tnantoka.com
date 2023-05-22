import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardGame extends FlameGame with KeyboardEvents {
  // <keyboard1>
  late RectangleComponent _rect;

  var _vx = 0.0;
  var _vy = 0.0;
  final _speed = 100.0;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _rect = RectangleComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      size: Vector2.all(100),
      anchor: Anchor.center,
    );
    await add(_rect);
  }

  @override
  void update(double dt) {
    super.update(dt);

    _rect.position += Vector2(_vx, _vy) * dt;
  }
  // </keyboard1>

  // <keyboard2>
  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is RawKeyUpEvent) {
      _vx = 0;
      _vy = 0;
      return KeyEventResult.handled;
    }

    if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
      _vx = -_speed;
      return KeyEventResult.handled;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
      _vx = _speed;
      return KeyEventResult.handled;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowUp)) {
      _vy = -_speed;
      return KeyEventResult.handled;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowDown)) {
      _vy = _speed;
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }
  // </keyboard2>
}
