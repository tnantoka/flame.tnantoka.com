import 'package:flame/components.dart';
import 'package:flame/game.dart';

class MoveGame extends FlameGame {
  var _speed = 200.0;
  late final CircleComponent _circle;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _circle = CircleComponent(
      position: Vector2(size.x * 0.5, size.y * 0.5),
      radius: size.x * 0.1,
      anchor: Anchor.center,
    );
    await add(_circle);
  }

  @override
  void update(double dt) {
    super.update(dt);

    final x = _circle.position.x + _speed * dt;
    if (x < _circle.radius || x > size.x - _circle.radius) {
      _speed *= -1;
    }
    _circle.position.x = x.clamp(_circle.radius, size.x - _circle.radius);
  }
}
