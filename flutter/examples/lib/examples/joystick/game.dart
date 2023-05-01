import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class JoystickGame extends FlameGame {
  // <joystick1>
  late final RectangleComponent _rect;
  late final JoystickComponent _joystick;
  final _speed = 10.0;
  // </joystick1>

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // <joystick2>
    _rect = RectangleComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      size: Vector2.all(size.x * 0.1),
      anchor: Anchor.center,
    );
    await add(_rect);
    // </joystick2>

    // <joystick3>
    _joystick = JoystickComponent(
      knob: CircleComponent(
        radius: 16,
        paint: BasicPalette.white.withAlpha(200).paint(),
      ),
      background: CircleComponent(
        radius: 40,
        paint: BasicPalette.white.withAlpha(100).paint(),
      ),
      margin: const EdgeInsets.only(
        left: 16,
        bottom: 32,
      ),
    );
    await add(_joystick);
    // </joystick3>
  }

  // <joystick4>
  @override
  void update(double dt) {
    super.update(dt);

    _rect.position += _joystick.delta * _speed * dt;
  }
  // </joystick4>
}
