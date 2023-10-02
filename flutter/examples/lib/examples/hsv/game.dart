import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';

class HSVGame extends FlameGame {
  var _h = 100.0;
  var _s = 0.5;
  var _v = 0.5;

  late final RectangleComponent _rect;
  late final TextComponent _hText;
  late final TextComponent _sText;
  late final TextComponent _vText;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      _rect = RectangleComponent(
        position: Vector2(size.x * 0.5, size.y * 0.5),
        size: Vector2.all(size.x * 0.2),
        anchor: Anchor.center,
      ),
    );

    _initHText();
    _initSText();
    _initVText();
  }

  _initHText() async {
    const step = 10.0;
    const max = 360.0;

    await add(
      _hText = TextComponent(
        text: '',
        position: Vector2(size.x * 0.5, size.y * 0.7),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.3, size.y * 0.7),
        onPressed: () {
          _h = (_h - step).clamp(0, max);
        },
        button: TextComponent(
          text: '<',
        ),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.7, size.y * 0.7),
        onPressed: () {
          _h = (_h + step).clamp(0, max);
        },
        button: TextComponent(
          text: '>',
        ),
        anchor: Anchor.center,
      ),
    );
  }

  _initSText() async {
    const step = 0.1;
    const max = 1.0;

    await add(
      _sText = TextComponent(
        text: '',
        position: Vector2(size.x * 0.5, size.y * 0.8),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.3, size.y * 0.8),
        onPressed: () {
          _s = (_s - step).clamp(0, max);
        },
        button: TextComponent(
          text: '<',
        ),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.7, size.y * 0.8),
        onPressed: () {
          _s = (_s + step).clamp(0, max);
        },
        button: TextComponent(
          text: '>',
        ),
        anchor: Anchor.center,
      ),
    );
  }

  _initVText() async {
    final step = 0.1;
    final max = 1.0;

    await add(
      _vText = TextComponent(
        text: '',
        position: Vector2(size.x * 0.5, size.y * 0.9),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.3, size.y * 0.9),
        onPressed: () {
          _v = (_v - step).clamp(0, max);
        },
        button: TextComponent(
          text: '<',
        ),
        anchor: Anchor.center,
      ),
    );

    await add(
      ButtonComponent(
        position: Vector2(size.x * 0.7, size.y * 0.9),
        onPressed: () {
          _v = (_v + step).clamp(0, max);
        },
        button: TextComponent(
          text: '>',
        ),
        anchor: Anchor.center,
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    // <hsv>
    _rect.paint.color = HSVColor.fromAHSV(
      1.0,
      _h,
      _s,
      _v,
    ).toColor();
    // </hsv>

    _hText.text = 'h : $_h';
    _sText.text = 's : ${_s.toStringAsFixed(2)}';
    _vText.text = 'v : ${_v.toStringAsFixed(2)}';
  }
}
