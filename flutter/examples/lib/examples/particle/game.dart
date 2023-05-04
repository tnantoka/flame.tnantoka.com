import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/particles.dart';

class ParticleGame extends FlameGame with TapDetector {
  final random = Random();

  @override
  void onTapDown(TapDownInfo info) async {
    super.onTapDown(info);

    final sprite = await Sprite.load('particle.png');
    add(
      ParticleSystemComponent(
        position: info.eventPosition.game,
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
          random.nextDouble() * 2 - 1,
          random.nextDouble() * 2 - 1,
        ) *
        random.nextInt(96).toDouble();
  }
}
