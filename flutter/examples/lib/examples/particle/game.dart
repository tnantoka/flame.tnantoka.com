import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/particles.dart';

class ParticleGame extends FlameGame with TapCallbacks {
  final _random = Random();

  @override
  void onTapDown(TapDownEvent event) async {
    super.onTapDown(event);

    final sprite = await Sprite.load('particle.png');
    add(
      ParticleSystemComponent(
        position: event.localPosition,
        particle: Particle.generate(
          count: 32,
          generator: (i) {
            return AcceleratedParticle(
              speed: _randomSpeed(),
              child: SpriteParticle(
                sprite: sprite,
              ),
            );
          },
        ),
      ),
    );
  }

  Vector2 _randomSpeed() {
    return Vector2(
          _random.nextDouble() * 2 - 1,
          _random.nextDouble() * 2 - 1,
        ) *
        _random.nextInt(96).toDouble();
  }
}
