import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/services.dart';

// <keyboard_listener1>
class KeyboardListenerGame extends FlameGame with HasKeyboardHandlerComponents {
// </keyboard_listener1>
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

    // <keyboard_listener2>
    await add(
      KeyboardListenerComponent(
        keyDown: {
          LogicalKeyboardKey.arrowDown: (keysPressed) {
            _vy = _speed;
            return true;
          },
          LogicalKeyboardKey.arrowUp: (keysPressed) {
            _vy = -_speed;
            return true;
          },
          LogicalKeyboardKey.arrowRight: (keysPressed) {
            _vx = _speed;
            return true;
          },
          LogicalKeyboardKey.arrowLeft: (keysPressed) {
            _vx = -_speed;
            return true;
          },
        },
        keyUp: {
          LogicalKeyboardKey.arrowDown: (keysPressed) {
            _vy = 0;
            return true;
          },
          LogicalKeyboardKey.arrowUp: (keysPressed) {
            _vy = 0;
            return true;
          },
          LogicalKeyboardKey.arrowRight: (keysPressed) {
            _vx = 0;
            return true;
          },
          LogicalKeyboardKey.arrowLeft: (keysPressed) {
            _vx = 0;
            return true;
          },
        },
      ),
    );
    // </keyboard_listener2>
  }

  @override
  void update(double dt) {
    super.update(dt);

    _rect.position += Vector2(_vx, _vy) * dt;
  }
}
