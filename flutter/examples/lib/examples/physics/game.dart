import 'package:flame/events.dart';
import 'package:flame/palette.dart';
import 'package:flame/extensions.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

// <physics3>
class PhysicsGame extends Forge2DGame with TapCallbacks {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final rect = camera.visibleWorldRect;

    await world.add(
      Wall(pos: rect.bottomLeft.toVector2(), size: Vector2(rect.width, 1)),
    );
    await world.add(
      Wall(pos: rect.topLeft.toVector2(), size: Vector2(1, rect.height)),
    );
    await world.add(
      Wall(pos: rect.topRight.toVector2(), size: Vector2(1, rect.height)),
    );
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);

    world.add(
      Ball(pos: screenToWorld(event.localPosition)),
    );
  }
}
// </physics3>

// <physics1>
class Wall extends BodyComponent {
  Wall({required this.pos, required this.size})
      : super(paint: BasicPalette.gray.paint());

  final Vector2 pos;
  final Vector2 size;

  @override
  Body createBody() {
    final shape = PolygonShape()..setAsBox(size.x, size.y, pos, 0);
    final fixtureDef = FixtureDef(shape, friction: 0.3);
    final bodyDef = BodyDef(userData: this);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
// </physics1>

// <physics2>
class Ball extends BodyComponent {
  Ball({required this.pos});

  final Vector2 pos;

  @override
  Body createBody() {
    final shape = CircleShape()..radius = 2;

    final fixtureDef = FixtureDef(
      shape,
      restitution: 0.8,
      density: 1.0,
      friction: 0.4,
    );

    final bodyDef = BodyDef(
      userData: this,
      position: pos,
      type: BodyType.dynamic,
    );

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }

  @override
  void renderCircle(Canvas canvas, Offset center, double radius) {
    super.renderCircle(canvas, center, radius);

    canvas.drawLine(
      center,
      center + Offset(0, radius),
      BasicPalette.black.paint(),
    );
  }
}
// </physics2>
