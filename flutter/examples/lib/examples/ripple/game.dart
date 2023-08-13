import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class RippleGame extends FlameGame with TapCallbacks {
  @override
  Future<void> onLoad() async {
    super.onLoad();
  }

  // <ripple2>
  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);

    add(
      Ripple(position: event.localPosition),
    );
  }
  // </ripple2>
}

// <ripple1>
class Ripple extends CircleComponent {
  Ripple({super.position})
      : super(
          anchor: Anchor.center,
          paint: Paint()
            ..color = Colors.white
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1,
        );

  final maxRadius = 20;

  @override
  void update(double dt) {
    super.update(dt);

    radius += 30 * dt;

    if (radius > maxRadius) {
      removeFromParent();
    }
  }
}
// </ripple1>
