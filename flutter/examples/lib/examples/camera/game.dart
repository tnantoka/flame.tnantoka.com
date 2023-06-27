import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CameraGame extends FlameGame with KeyboardEvents {
  late RectangleComponent _rect;

  var _vx = 0.0;
  var _vy = 0.0;
  final _speed = 500.0;

  final world = World();
  late final CameraComponent _cameraComponent;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _rect = RectangleComponent(
      position: Vector2.zero(),
      size: Vector2.all(100),
    );

    // <camera2>
    final world = World();
    _cameraComponent = CameraComponent(world: world);
    await add(world);
    await add(_cameraComponent);

    final map = Map();
    world.add(map);
    world.add(_rect);

    _cameraComponent.follow(_rect);
    // </camera2>
  }

  @override
  void update(double dt) {
    super.update(dt);

    _rect.position = Vector2(
      (_rect.position.x + _vx * dt).clamp(0, Map.length - 100),
      (_rect.position.y + _vy * dt).clamp(0, Map.length - 100),
    );
  }

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
    }
    if (keysPressed.contains(LogicalKeyboardKey.arrowUp)) {
      _vy = -_speed;
      return KeyEventResult.handled;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowDown)) {
      _vy = _speed;
      return KeyEventResult.handled;
    }

    return KeyEventResult.ignored;
  }
}

// <camera1>
class Map extends PositionComponent {
  Map()
      : super(
          size: Vector2.all(length),
        );

  static const double length = 1500;

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    const steps = 10;
    for (var i = steps; i >= 0; i -= 1) {
      canvas.drawRect(
        Rect.fromCenter(
          center: Offset(width * 0.5, height * 0.5),
          width: width / steps * i.toDouble(),
          height: height / steps * i.toDouble(),
        ),
        Paint()..color = Color.fromARGB(255, 0, ((200 / steps) * i).toInt(), 0),
      );
    }
  }
}
// </camera1>
