import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LifecycleGame extends FlameGame {
  late final TextComponent _text;
  final _counts = {'onRemove': 0};

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);

    _count('onGameResize');
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();

    _count('onLoad');

    _text = TextComponent(
      position: Vector2(size.x * 0.5, size.y * 0.1),
      anchor: Anchor.topCenter,
    );
    await add(_text);
  }

  @override
  void onMount() {
    super.onMount();

    _count('onMount');
  }

  @override
  void update(double dt) {
    super.update(dt);

    _count('update');
    _text.text = _counts.toString().split(',').join(',\n');
  }

  @override
  render(Canvas canvas) {
    super.render(canvas);

    _count('render');
  }

  @override
  onRemove() {
    super.onRemove();

    _count('onRemove');
  }

  _count(String key) {
    _counts[key] = (_counts[key] ?? 0) + 1;
  }
}
