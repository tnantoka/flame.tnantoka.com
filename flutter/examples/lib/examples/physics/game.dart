import 'dart:ui';

import 'package:flame/events.dart';
import 'package:flame/palette.dart';
import 'package:flame_forge2d/flame_forge2d.dart';

// <physics3>
class PhysicsGame extends Forge2DGame with TapDetector {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    final screen = screenToWorld(camera.viewport.effectiveSize);

    await add(Wall(position: Vector2(0, screen.y), size: Vector2(screen.x, 1)));
    await add(Wall(position: Vector2(0, 0), size: Vector2(1, screen.y)));
    await add(Wall(position: Vector2(screen.x, 0), size: Vector2(1, screen.y)));
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);

    add(Ball(position: info.eventPosition.game));
  }
}
// </physics3>

// <physics1>
class Wall extends BodyComponent {
  Wall({required this.position, required this.size})
      : super(paint: BasicPalette.gray.paint());

  final Vector2 position;
  final Vector2 size;

  @override
  Body createBody() {
    final shape = PolygonShape()..setAsBoxXY(size.x, size.y);
    final fixtureDef = FixtureDef(shape, friction: 0.3);
    final bodyDef = BodyDef(userData: this, position: position);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
// </physics1>

// <physics2>
class Ball extends BodyComponent {
  Ball({required this.position});

  final Vector2 position;

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
      position: position,
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
