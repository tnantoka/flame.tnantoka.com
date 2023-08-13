import 'dart:math';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class ScreenHitboxGame extends FlameGame
    with TapCallbacks, HasCollisionDetection {
  final _random = Random();

  // <screen_hitbox1>
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(ScreenHitbox());
  }
  // </screen_hitbox1>

  // <screen_hitbox2>
  @override
  void onTapDown(TapDownEvent event) async {
    super.onTapDown(event);

    add(
      Ball(
        position: event.localPosition,
        vx: _random.nextDouble() * 200 - 100,
        vy: _random.nextDouble() * 200 - 100,
      ),
    );
  }
  // </screen_hitbox2>
}

// <screen_hitbox3>
class Ball extends CircleComponent with CollisionCallbacks {
  Ball({super.position, required this.vx, required this.vy})
      : super(radius: 10);

  double vx;
  double vy;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(CircleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);

    position += Vector2(vx, vy) * dt;
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);

    if (other is ScreenHitbox) {
      paint = BasicPalette.gray.paint();
      vx = 0;
      vy = 0;
    }
  }
}
// </screen_hitbox3>
