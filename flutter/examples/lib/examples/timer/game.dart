import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';

class TimerGame extends FlameGame {
  final _random = Random();

  late final TextComponent _text;
  late final ButtonComponent _button;
  var _count = 0;
  var _vx = 0.0;
  var _vy = 0.0;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      _text = TextComponent(
        position: Vector2(size.x * 0.5, size.y * 0.4),
        anchor: Anchor.center,
        text: '',
      ),
    );

    await add(
      _button = ButtonComponent(
        position: Vector2(size.x * 0.5, size.y * 0.6),
        onPressed: _onPressed,
        button: TextComponent(
          text: 'Button',
        ),
        anchor: Anchor.center,
      ),
    );

    // <timer1>
    await add(
      TimerComponent(
        period: 1.0,
        repeat: true,
        onTick: () => _count++,
      ),
    );
    // </timer1>
  }

  @override
  void update(double dt) {
    super.update(dt);

    _text.text = _count.toString();
    _button.position += Vector2(_vx, _vy) * dt;
  }

  // <timer2>
  _onPressed() {
    _vx = (_random.nextBool() ? 1 : -1) * 50;
    _vy = (_random.nextBool() ? 1 : -1) * 50;

    add(
      TimerComponent(
        period: 0.5,
        onTick: () {
          _vx = 0;
          _vy = 0;
        },
        removeOnFinish: true,
      ),
    );
  }
  // </timer2>
}
