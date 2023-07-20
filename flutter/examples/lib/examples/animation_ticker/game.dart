import 'dart:async';
import 'dart:ui' as ui;

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

class AnimationTickerGame extends FlameGame with TapCallbacks {
  late final ui.Image _image;
  late final SpriteAnimationData _animationData;

  @override
  Future onLoad() async {
    super.onLoad();

    _image = await images.load('explosion.png');
    _animationData = SpriteAnimationData.sequenced(
      textureSize: Vector2.all(32),
      amount: 6,
      stepTime: 0.2,
      loop: false,
    );
  }

  // <animation_ticker>
  @override
  Future onTapDown(TapDownEvent event) async {
    super.onTapDown(event);

    final component = SpriteAnimationComponent.fromFrameData(
      _image,
      _animationData,
      position: event.localPosition,
      anchor: Anchor.center,
    );
    add(component);

    await component.animationTicker?.completed;
    add(
      RectangleComponent(
        size: Vector2.all(32),
        position: event.localPosition,
        anchor: Anchor.center,
      ),
    );
  }
  // </animation_ticker>
}
