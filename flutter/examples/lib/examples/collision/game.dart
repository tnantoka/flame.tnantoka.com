import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

// <collision3>
class CollisionGame extends FlameGame with TapDetector, HasCollisionDetection {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    await add(
      Ground(
        position: Vector2(0, size.y * 0.9),
        size: Vector2(size.x, size.y * 0.1),
      ),
    );
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);

    add(
      Ball(position: info.eventPosition.game),
    );
  }
}
// </collision3>

// <collision1>
class Ground extends RectangleComponent {
  Ground({super.position, super.size})
      : super(
          paint: BasicPalette.gray.paint(),
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(RectangleHitbox());
  }
}
// </collision1>

// <collision2>
class Ball extends CircleComponent with CollisionCallbacks {
  Ball({super.position})
      : super(
          radius: 10,
        );

  var vy = 2.0;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await add(CircleHitbox());
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);

    if (other is Ground || other is Ball) {
      vy = 0;
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    y += vy;
  }
}
// </collision2>
